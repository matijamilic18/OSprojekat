//
// Created by marko on 20.4.22..
//

#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/syscall_c.hpp"
#include "../h/print.hpp"
#include "../lib/mem.h"
#include "../h/_sem.hpp"
#include "../h/sleeping_threads_list.hpp"
#include "../h/doubleBuffer.hpp"
#include "../h/buffer.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/MatijaMilic.hpp"

sleeping_threads_list sleepingThreadsList;
extern buffer* getCBuffer;
extern buffer* putCBuffer;

void Riscv::popSppSpie()
{
    Riscv::ms_sstatus(SSTATUS_SPIE);

    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

void Riscv::handleSupervisorTrap()
{

    uint64 volatile sepc = r_sepc();
    uint64 volatile sstatus= r_sstatus();
    uint64 volatile scause = r_scause();

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    {
        uint64  volatile CODE;
        uint64  volatile arg1;
        uint64  volatile arg2;
        uint64  volatile arg3;
        __asm__ volatile("mv %0, a0" : "=r" (CODE));
        __asm__ volatile("mv %0, a1" : "=r" (arg1));
        __asm__ volatile("mv %0, a2" : "=r" (arg2));
        __asm__ volatile("mv %0, a3" : "=r" (arg3));


        // interrupt: no; cause code: environment call from U-mode(8) or S-mode(9)
        sepc= sepc +4;
        uint64 rett;

        thread_t* handle;

        if (CODE == SCALL_THREAD_CREATE){


            handle = (thread_t*) arg1;

            if (handle != nullptr){
                *handle = TCB::createThread(reinterpret_cast<void (*) (void*)>(arg2),(void*)arg3);

                rett=0;
            }else {
                rett=-1;
            }
            __asm__ volatile ("sd %0, 10*8(fp)" :: "r"(rett));



        }else if (CODE == SCALL_THREAD_DISPATCH){
            TCB::timeSliceCounter=0;
            TCB::dispatch();

        }else if (CODE==MEM_ALLOC){

            void* re = MemoryAllocator::getInstance().mem_alloc(arg1);
            __asm__ volatile ("sd %0, 10*8(fp)" :: "r"(re));

        }else if (CODE==MEM_FREE){
            void* tmp = (void*) arg1;
            rett = MemoryAllocator::getInstance().mem_free(tmp);
            __asm__ volatile ("sd %0, 10*8(fp)" :: "r"(rett));

        }else if (CODE==SCALL_THREAD_EXIT){
            TCB::running->setFinished(true);
            TCB::timeSliceCounter=0;
            TCB::dispatch();

        }else if (CODE== SCALL_THREAD_JOIN){
            TCB* p= TCB::running;
            TCB* target = (TCB*) arg1;
            bool l= p->isFinished();
            TCB::running->setFinished(true);
            target->block(p);
            TCB::dispatch();
            p->setFinished(l);
        }else if (CODE==SCALL_SEM_OPEN){

            sem_t* handle_sem = (sem_t*) arg1;
            uint64 init = arg2;

            if (handle_sem != nullptr){
                *handle_sem=_sem::createSem(init);
                rett=0;
            }else {
                rett=-1;
            }
            __asm__ volatile ("sd %0, 10*8(fp)" :: "r"(rett));

        }else if (CODE==SCALL_SEM_CLOSE){
            sem_t handle_sem = (sem_t) arg1;
            if (handle_sem!= nullptr){
                rett=(*handle_sem).close();
            }else{
                rett= -1;
            }
            __asm__ volatile ("sd %0, 10*8(fp)" :: "r"(rett));

        }else if (CODE== SCALL_SEM_WAIT){
            sem_t id = (sem_t) arg1;
            if (id!= nullptr){
                rett=(*id).wait();
            }else{
                rett=-1;
            }
            __asm__ volatile ("sd %0, 10*8(fp)" :: "r"(rett));

        }else if (CODE==SCALL_SEM_SIGNAL){
            sem_t id = (sem_t) arg1;
            if (id!= nullptr){
                rett=(*id).signal();
            }else{
                rett=-1;
            }
            __asm__ volatile ("sd %0, 10*8(fp)" :: "r"(rett));
        }else if (CODE == SCALL_TIME_SLEEP){
            int vreme= arg1;
            sleepingThreadsList.put(TCB::running,vreme);
            TCB::running->setSleeping(true);
            TCB::dispatch();
            rett=0;
            __asm__ volatile ("sd %0, 10*8(fp)" :: "r"(rett));

        }else if (CODE == SCALL_GETC){
            char c = getCBuffer->get();
            __asm__ volatile ("sd %0, 10*8(fp)" :: "r"(c));
        }else if (CODE == SCALL_PUTC){
            char c = (char) arg1;
            putCBuffer->put(c);
        }





        /*TCB::timeSliceCounter = 0;
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);*/
    }
    else if (scause == 0x8000000000000001UL)
    {

        // interrupt: yes; cause code: supervisor software interrupt (CLINT; machine timer interrupt)
        TCB::timeSliceCounter++;
        if (sleepingThreadsList.peek()<=0){
            sleepingThreadsList.removeFinished();
        }
        sleepingThreadsList.dec();
        if (TCB::running != nullptr && TCB::timeSliceCounter >= TCB::running->getTimeSlice())
        {
            TCB::timeSliceCounter=0;
            TCB::dispatch();
        }
        mc_sip(SIP_SSIP);

    }
    else if (scause == 0x8000000000000009UL)
    {
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        //console_handler();
        int irq=plic_claim();
        sem_signal(MatijaMilic::getInstance().getCSem);
        sem_signal(MatijaMilic::getInstance().putCSem);
        plic_complete(irq);
    }
    else
    {
        putc('g');
    }
    w_sepc(sepc);
    w_sstatus(sstatus);
}