//
// Created by os on 7/1/23.
//

#ifndef PROJECT_BASE_SYSCALL_C_HPP
#define PROJECT_BASE_SYSCALL_C_HPP

#include "../lib/hw.h"

const uint16 SCALL_THREAD_CREATE = 0x11;

class TCB;
typedef TCB* thread_t;
int thread_create (thread_t* handle, void (*start_routine)(void*), void* arg);

int thread_exit();

void thread_dispatch();

#endif //PROJECT_BASE_SYSCALL_C_HPP
