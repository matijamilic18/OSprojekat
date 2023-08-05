//
// Created by os on 8/3/23.
//

#ifndef PROJECT_BASE__SEM_HPP
#define PROJECT_BASE__SEM_HPP
#include "../lib/hw.h"
#include "list.hpp"
#include "tcb.hpp"

class _sem {
public:
    _sem(int initValue) {
        val=initValue;
        blockedThreads=0;
        closed=false;
    }

    int wait();
    int signal();
    int close();
    int value() const   {return val;};

    static _sem* createSem(int initVal);
    ~_sem();
protected:
    void block();
    void deblock();
private:
    int blockedThreads;
    int val;
    bool closed;
    List<TCB> blockedQ;
};


#endif //PROJECT_BASE__SEM_HPP
