//
// Created by os on 8/18/23.
//

#ifndef _syscall_cpp
#define _syscall_cpp
#include "syscall_c.hpp"

class Thread {
public:
    Thread (void (*body)(void*), void* arg);
    virtual ~Thread ();
    int start ();
    void join();
    static void dispatch ();
    static int sleep (time_t);
    static void Wrapper(void *t);
protected:
    Thread ();
    virtual void run () {}
private:
    thread_t myHandle;
    void (*body)(void*); void* arg;


};
class Semaphore {
public:
    Semaphore (unsigned init = 1);
    virtual ~Semaphore ();
    int wait ();
    int signal ();
private:
    sem_t myHandle;
};
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
private:
    time_t period;
    bool finished = false;
    static void periodicWrapper(void*);
};
class Console {
public:
    static char getc ();

    static void putc (char);
};
#endif