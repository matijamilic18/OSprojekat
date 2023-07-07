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
