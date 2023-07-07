//
// Created by os on 7/1/23.
//

#ifndef PROJECT_BASE_SYSCALL_C_HPP
#define PROJECT_BASE_SYSCALL_C_HPP

#include "../lib/hw.h"

const uint16 MEM_ALLOC= 0x01;
const uint16 MEM_FREE = 0x02;
const uint16 SCALL_THREAD_CREATE = 0x11;
const uint16 SCALL_THREAD_EXIT = 0x12;
const uint16 SCALL_THREAD_DISPATCH= 0x13;

class TCB;
typedef TCB* thread_t;
int thread_create (thread_t* handle, void (*start_routine)(void*), void* arg);

int thread_exit();

void thread_dispatch();


void* mem_alloc(size_t size);

int mem_free (void*);

#endif //PROJECT_BASE_SYSCALL_C_HPP
