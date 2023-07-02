//
// Created by marko on 20.4.22..
//

#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
int main()
{
    TCB *threads[5];

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

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while (!(threads[1]->isFinished() &&
             threads[2]->isFinished() &&
             threads[3]->isFinished() &&
             threads[4]->isFinished()))
    {
        TCB::yield();
    }

    for (auto &thread: threads)
    {
        delete thread;
    }
    printString("Finished\n");

    return 0;
}
