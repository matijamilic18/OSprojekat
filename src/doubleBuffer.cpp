//
// Created by os on 8/9/23.
//

#include "../h/doubleBuffer.hpp"
#include "../h/syscall_c.hpp"

doubleBuffer::doubleBuffer(int size) {
    sem_open((&inputBufReady), 1);
    sem_open((&outputBufReady), 1);
    buffer[0]=new char[KB_SIZE];
    buffer[1]=new char[KB_SIZE];
    this->size=size;
    head=tail=0;
    slots=size;
    items=0;
    InputBuffer=0;
    OutputBuffer=1;

}

void doubleBuffer::put(char c) {
    if (slots==0){
        sem_wait(inputBufReady);
        OutputBuffer=!OutputBuffer;
        items=size;
        head=0;
    }
    buffer[OutputBuffer][tail]=c;
    tail=(tail+1)%KB_SIZE;
    slots--;
    if (slots==0){
        sem_signal(outputBufReady);
    }
}

char doubleBuffer::get() {
    if (items==0){
        sem_wait(outputBufReady);
        InputBuffer=!InputBuffer;
        items=size;
        head=0;
    }
    char c= buffer[InputBuffer][head];
    head=(head+1)%KB_SIZE;
    items--;
    if (items==0) sem_signal(inputBufReady);
    return c;
}
