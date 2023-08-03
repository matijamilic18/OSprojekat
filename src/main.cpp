//
// Created by marko on 20.4.22..
//

#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/_sem.hpp"
thread_t handle1;
_sem* newsem;
void main()
{
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);

    TCB *threads[5];
    newsem=new _sem(0);
    thread_create(&threads[0], nullptr, nullptr);
    TCB::running = threads[0];

    thread_create(&threads[1], reinterpret_cast<void (*)(void *)>(workerBodyA), nullptr);
    printString("ThreadA created\n");
    thread_create(&threads[2], reinterpret_cast<void (*)(void *)>(workerBodyB), nullptr);
    printString("ThreadB created\n");
    thread_create(&threads[3], reinterpret_cast<void (*)(void *)>(workerBodyC), nullptr);
    printString("ThreadC created\n");
    thread_create(&threads[4], reinterpret_cast<void (*)(void *)>(workerBodyD), nullptr);
    printString("ThreadD created\n");

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    handle1 = threads[1];

   while (!(threads[1]->isFinished() &&
             threads[2]->isFinished() &&
             threads[3]->isFinished() &&
             threads[4]->isFinished()))
    {
        thread_dispatch();
    }

   for (int i=1;i<5;i++){
       delete threads[i];
   }

    printString("Finished\n");

    return;
}
