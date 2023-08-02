//
// Created by marko on 20.4.22..
//

#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/syscall_c.hpp"
#include "../h/print.hpp"
#include "../lib/mem.h"

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
            void* re = __mem_alloc(arg1);
            __asm__ volatile ("sd %0, 10*8(fp)" :: "r"(re));

        }else if (CODE==MEM_FREE){
            void* tmp = (void*) arg1;
            rett = __mem_free(tmp);
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
        console_handler();
    }
    else
    {
        __putc('g');
    }
    w_sepc(sepc);
    w_sstatus(sstatus);
}