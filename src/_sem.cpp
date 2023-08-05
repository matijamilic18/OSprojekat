//
// Created by os on 8/3/23.
//

#include "../h/_sem.hpp"
#include "../h/syscall_c.hpp"

int _sem::wait() {
    if (--val<0){
        block();
    }
    if (!closed){
        return 0;
    }else if (blockedThreads==0){
        return 0;
    }else{
        blockedThreads--;
        return -1;
    }
}

int _sem::signal() {
    if (closed) return -1;
    if(++val<=0) deblock();
    return 0;
}

int _sem::close() {
    if (closed) return -1;
    closed = true;
    while (blockedQ.peekFirst()){
        blockedQ.peekFirst()->setBlocked(false);
        Scheduler::put(blockedQ.peekFirst());
        blockedQ.removeFirst();
    }
    return 0;
}

void _sem::block() {
    blockedThreads++;
    blockedQ.addLast(TCB::running);
    TCB::running->setBlocked(true);
    thread_dispatch();
}

void _sem::deblock() {
    blockedThreads--;
    TCB* tmp= blockedQ.removeFirst();
    tmp->setBlocked(false);
    Scheduler::put(tmp);
}

_sem::~_sem() {
    close();
}

_sem *_sem::createSem(int initVal) {
    return new _sem(initVal);
}
