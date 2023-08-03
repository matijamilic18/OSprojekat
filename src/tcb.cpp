//
// Created by marko on 20.4.22..
//

#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"

TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;


TCB *TCB::createThread(Body body, void* arg)
{
    return new TCB(body,arg, TIME_SLICE);
}

void TCB::yield()
{
    thread_dispatch();
}

void TCB::dispatch()
{
    TCB *old = running;
    if (!old->isFinished()&& !old->isBlocked()) { Scheduler::put(old); }
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);


}

void TCB::threadWrapper()
{
    Riscv::popSppSpie();
    running->body(running->arg);
    running->setFinished(true);
    running->unblock();
    TCB::yield();
}

void TCB::block(TCB *thread) {

    blockedQueue.addLast(thread);
}

void TCB::unblock() {
    while(blockedQueue.getSize()>0){
        TCB* t=blockedQueue.removeFirst();
        Scheduler::put(t);
    }

}
