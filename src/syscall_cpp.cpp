//
// Created by os on 8/18/23.
//

#include "../h/syscall_cpp.hpp"
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"

char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);

}

Semaphore::~Semaphore() {
    sem_close(myHandle);

}

int Semaphore::wait() {
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}

Thread::Thread(void (*body)(void *), void *arg) {
    myHandle= nullptr;
    this->body=body;
    this->arg=arg;

}

Thread::~Thread() {
    if (myHandle) myHandle->setFinished(true);
}

int Thread::start() {
    if (body) return thread_create(&myHandle,body,arg);
    else return thread_create(&myHandle,Wrapper,arg);
}

void Thread::Wrapper(void* t){
    ((Thread*)(t))->run();
}

void Thread::join() {
    thread_join(myHandle);
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::sleep(time_t t) {
    return time_sleep(t);
}

Thread::Thread() {
    this->body= nullptr;
    this->myHandle= nullptr;
    this->arg = this;
}

void PeriodicThread::terminate() {
    finished=true;
}

PeriodicThread::PeriodicThread(time_t period): Thread(reinterpret_cast<void (*)(void *)>(periodicWrapper), this) {
    period=period;
}

void PeriodicThread::periodicWrapper(void* thread){
    while (!((PeriodicThread*)(thread))->finished){
        ((PeriodicThread*)(thread))->periodicActivation();
        ((PeriodicThread*)(thread))->sleep(((PeriodicThread*)(thread))->period);
    }
}