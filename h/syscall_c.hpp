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
const uint16 SCALL_THREAD_JOIN = 0x14;
const uint16 SCALL_SEM_OPEN = 0x21;
const uint16 SCALL_SEM_CLOSE = 0x22;
const uint16 SCALL_SEM_WAIT = 0x23;
const uint16 SCALL_SEM_SIGNAL = 0x24;
const uint16 SCALL_TIME_SLEEP = 0x31;
const uint16 SCALL_GETC = 0x41;
const uint16 SCALL_PUTC = 0x42;

class TCB;
typedef TCB* thread_t;

int thread_create (thread_t* handle, void (*start_routine)(void*), void* arg);

int thread_exit();

void thread_dispatch();

void thread_join (thread_t handle);

void* mem_alloc(size_t size);

int mem_free (void*);

class _sem;
typedef _sem* sem_t;

int sem_open (sem_t* handle,unsigned init);

int sem_close (sem_t handle);

int sem_wait (sem_t id);

int sem_signal (sem_t id);

typedef unsigned long time_t;

int time_sleep(time_t time);


const int EOF = -1;

char getc();

void putc (char);




#endif //PROJECT_BASE_SYSCALL_C_HPP
