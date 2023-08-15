//
// Created by os on 8/9/23.
//

#ifndef PROJECT_BASE_DOUBLEBUFFER_HPP
#define PROJECT_BASE_DOUBLEBUFFER_HPP


#include "_sem.hpp"
#include "syscall_c.hpp"

class doubleBuffer {
public:
    doubleBuffer(int size);
    void put (char);
    char get ();
private:
    sem_t inputBufReady,outputBufReady;
    char* buffer[2];
    int size, head, tail, slots, items,InputBuffer, OutputBuffer;
    static const uint16 KB_SIZE = 256;

};


#endif //PROJECT_BASE_DOUBLEBUFFER_HPP
