//
// Created by marko on 20.4.22..
//

#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/_sem.hpp"
#include "../h/doubleBuffer.hpp"
#include "../h/buffer.hpp"

thread_t handle1;
_sem* newsem ;
buffer* putCBuffer;
buffer* getCBuffer;

void idleThread(void*){
    while(true){
        thread_dispatch();
    }
}

void outputThread (void*){
    while (true){
        while((*((char*)(CONSOLE_STATUS))& CONSOLE_TX_STATUS_BIT)){
            volatile char c= putCBuffer->get();
            *((char*) CONSOLE_TX_DATA) = c;
        }
    }
}

void inputThread (void*){
    while (true){
        while(*((char *)(CONSOLE_STATUS))&CONSOLE_RX_STATUS_BIT){
            volatile char c= (*(char*)CONSOLE_RX_DATA);
            getCBuffer->put(c);
        }

    }

}


void main()
{
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    putCBuffer=new buffer(256);
    getCBuffer=new buffer(256);
    TCB *threads[8];
    sem_open(&newsem, 0);
    thread_create(&threads[0], nullptr, nullptr);
    TCB::running = threads[0];

    thread_create(&threads[1], idleThread, nullptr);

    thread_create(&threads[2], outputThread, nullptr);
    thread_create(&threads[3], inputThread, nullptr);
    thread_create(&threads[4], reinterpret_cast<void (*)(void *)>(workerBodyA), nullptr);
    printString("ThreadA created\n");
    thread_create(&threads[5], reinterpret_cast<void (*)(void *)>(workerBodyB), nullptr);
    printString("ThreadB created\n");
    thread_create(&threads[6], reinterpret_cast<void (*)(void *)>(workerBodyC), nullptr);
    printString("ThreadC created\n");
    thread_create(&threads[7], reinterpret_cast<void (*)(void *)>(workerBodyD), nullptr);
    printString("ThreadD created\n");

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    handle1 = threads[1];

   while (!(threads[4]->isFinished() &&
             threads[5]->isFinished() &&
             threads[6]->isFinished() &&
             threads[7]->isFinished()))
    {
        thread_dispatch();
    }

   for (int i=4;i<8;i++){
       delete threads[i];
   }

    printString("Finished\n");

    return;

}
