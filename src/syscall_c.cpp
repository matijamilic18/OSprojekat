//
// Created by os on 7/1/23.
//

#include "../h/syscall_c.hpp"
#include "../lib/hw.h"
#include "../h/print.hpp"


int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg) {
    __asm__ volatile ("mv a3, %0" : : "r" (arg));
    __asm__ volatile ("mv a2, %0" : : "r" (start_routine));
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    __asm__ volatile ("mv a0, %0" : : "r" (SCALL_THREAD_CREATE));


    __asm__ volatile ("ecall");

    int retValue;
    __asm__ volatile ("mv %0,a0" :  "=r" (retValue));

    return  retValue;

}

void thread_dispatch() {
    __asm__ volatile ("mv a0, %0" : : "r" (SCALL_THREAD_DISPATCH));
    __asm__ volatile ("ecall");

}

void *mem_alloc(size_t size) {

    __asm__ volatile ("mv a1,%0" : : "r"(size));
    __asm__ volatile ("mv a0, %0" : : "r" (MEM_ALLOC));
    __asm__ volatile ("ecall");


    void* retp;
    __asm__ volatile ("mv %0, a0" : "=r" (retp));

    return retp;
}

int mem_free(void * address) {
    __asm__ volatile ("mv a1,%0" : : "r"(address));
    __asm__ volatile ("mv a0, %0" : : "r" (MEM_FREE));
    __asm__ volatile ("ecall");


    int retValue;
    __asm__ volatile ("mv %0,a0" :  "=r" (retValue));

    return  retValue;
}

int thread_exit() {
    __asm__ volatile ("mv a0, %0" : : "r" (SCALL_THREAD_EXIT));
    __asm__ volatile ("ecall");


    int retValue;
    __asm__ volatile ("mv %0,a0" :  "=r" (retValue));

    return  retValue;
}

void thread_join(thread_t handle) {
    __asm__ volatile ("mv a1, %0" : : "r" (handle));

    __asm__ volatile ("mv a0, %0" : : "r" (SCALL_THREAD_JOIN));
    __asm__ volatile ("ecall");
}

int sem_open(sem_t *handle, unsigned int init) {
    __asm__ volatile ("mv a2, %0" : : "r" (init));
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    __asm__ volatile ("mv a0, %0" : : "r" (SCALL_SEM_OPEN));


    __asm__ volatile ("ecall");

    int retValue;
    __asm__ volatile ("mv %0,a0" :  "=r" (retValue));

    return  retValue;
}

int sem_close(sem_t handle) {
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    __asm__ volatile ("mv a0, %0" : : "r" (SCALL_SEM_CLOSE));


    __asm__ volatile ("ecall");

    int retValue;
    __asm__ volatile ("mv %0,a0" :  "=r" (retValue));

    return  retValue;}

int sem_wait(sem_t id) {
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    __asm__ volatile ("mv a0, %0" : : "r" (SCALL_SEM_WAIT));


    __asm__ volatile ("ecall");

    int retValue;
    __asm__ volatile ("mv %0,a0" :  "=r" (retValue));

    return  retValue;
}

int sem_signal(sem_t id) {
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    __asm__ volatile ("mv a0, %0" : : "r" (SCALL_SEM_SIGNAL));


    __asm__ volatile ("ecall");

    int retValue;
    __asm__ volatile ("mv %0,a0" :  "=r" (retValue));

    return  retValue;
}

int time_sleep(time_t time) {
    __asm__ volatile ("mv a1, %0" : : "r" (time));
    __asm__ volatile ("mv a0, %0" : : "r" (SCALL_TIME_SLEEP));


    __asm__ volatile ("ecall");

    int retValue;
    __asm__ volatile ("mv %0,a0" :  "=r" (retValue));

    return  retValue;
}

char getc() {
    __asm__ volatile ("mv a0, %0" : : "r" (SCALL_GETC));


    __asm__ volatile ("ecall");

    char retValue;
    __asm__ volatile ("mv %0,a0" :  "=r" (retValue));

    return  retValue;
}

void putc(char c) {
    __asm__ volatile ("mv a1, %0" : : "r" (c));
    __asm__ volatile ("mv a0, %0" : : "r" (SCALL_PUTC));


    __asm__ volatile ("ecall");
}
