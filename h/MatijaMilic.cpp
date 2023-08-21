//
// Created by os on 8/20/23.
//

#include "MatijaMilic.hpp"
#include "syscall_c.hpp"

MatijaMilic &MatijaMilic::getInstance() {
    static MatijaMilic gej;
    return gej;
}

MatijaMilic::MatijaMilic() {
    sem_open(&putCSem,0);
    sem_open(&getCSem,0);
}
