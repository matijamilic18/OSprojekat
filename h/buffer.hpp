//
// Created by os on 8/15/23.
//

#ifndef PROJECT_BASE_BUFFER_HPP
#define PROJECT_BASE_BUFFER_HPP


#include "../lib/hw.h"
#include "syscall_c.hpp"

class buffer {
public:
    buffer(int kap);
    void put(char c);
    char get();
private:
    char* buff;
    int capacity;
    static const uint16 KB_SIZE=256;
    sem_t itemAvailable,spaceAvailable, mutexPut,mutexGet;
    int head;
    int tail;
    int size;

};


#endif //PROJECT_BASE_BUFFER_HPP
