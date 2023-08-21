//
// Created by os on 8/15/23.
//

#include "../h/buffer.hpp"
#include "../h/_sem.hpp"

buffer::buffer(int kap) {

    head=0;tail=0;capacity=kap;size=0;
    itemAvailable= _sem::createSem(0);
    spaceAvailable =_sem::createSem(kap);
    mutexPut=_sem::createSem(1);
    mutexGet=_sem::createSem(1);
}

void buffer::put(char c) {
    sem_wait(spaceAvailable);
    sem_wait(mutexPut);

    buff[tail]=c;
    tail=(tail+1)%capacity;
    size++;

    sem_signal(mutexPut);
    sem_signal(itemAvailable);
}

char buffer::get() {
    sem_wait(itemAvailable);
    sem_wait(mutexGet);

    char c= buff[head];
    head=(head+1)%capacity;
    size--;

    sem_signal(mutexGet);
    sem_signal(spaceAvailable);
    return c;
}

buffer::buffer() {
    buffer(1024);

}
