//
// Created by marko on 20.4.22..
//

#include "../lib/hw.h"
#include "../h/tcb.hpp"
#include "../h/print.hpp"
#include "../h/syscall_c.hpp"
#include "../h/_sem.hpp"

extern thread_t handle1;
extern _sem* newsem;
void workerBodyA()
{
    for (uint64 i = 0; i < 10; i++)
    {
        printString2("A: i=");
        printInteger2(i);
        printString2("\n");
        for (uint64 j = 0; j < 10000; j++)
        {
            for (uint64 k = 0; k < 30000; k++)
            {
                // busy wait
            }
//            TCB::yield();
        }
    }
}

void workerBodyB()
{
    for (uint64 i = 0; i < 16; i++)
    {
        if (i==14){
            time_sleep(20);
        }
        printString2("B: i=");
        printInteger2(i);
        printString2("\n");
        for (uint64 j = 0; j < 10000; j++)
        {
            for (uint64 k = 0; k < 30000; k++)
            {
                // busy wait
            }
//            TCB::yield();
        }
    }

}

static uint64 fibonacci(uint64 n)
{
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { TCB::yield(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyC()
{
    uint8 i = 0;
    for (; i < 3; i++)
    {
        printString2("C: i=");
        printInteger2(i);
        printString2("\n");
    }

    printString2("C: yield\n");
    __asm__ ("li t1, 7");
    TCB::yield();

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));

    printString2("C: t1=");
    printInteger2(t1);
    printString2("\n");

    uint64 result = fibonacci(12);
    printString2("C: fibonaci=");
    printInteger2(result);
    printString2("\n");

    for (; i < 6; i++)
    {
        printString2("C: i=");
        printInteger2(i);
        printString2("\n");
    }
//    TCB::yield();
}

void workerBodyD()
{
    uint8 i = 10;
    for (; i < 13; i++)
    {
        printString2("D: i=");
        printInteger2(i);
        printString2("\n");
    }

    printString2("D: yield\n");
    __asm__ ("li t1, 5");
    TCB::yield();

    uint64 result = fibonacci(16);
    printString2("D: fibonaci=");
    printInteger2(result);
    printString2("\n");
    time_sleep(30);

    for (; i < 16; i++)
    {
        printString2("D: i=");
        printInteger2(i);
        printString2("\n");
    }
//    TCB::yield();
}