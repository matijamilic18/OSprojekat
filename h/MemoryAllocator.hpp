//
// Created by os on 8/17/23.
//

#ifndef PROJECT_BASE_MEMORYALLOCATOR_HPP
#define PROJECT_BASE_MEMORYALLOCATOR_HPP

#include "../lib/hw.h"

struct FreeMem{
    FreeMem* prev;
    FreeMem* next;
    size_t size;

};


class MemoryAllocator {
public:
    int mem_free(void* adr);
    void* mem_alloc(size_t sz);
    int tryToJoin(FreeMem* cur);
    static MemoryAllocator& getInstance ();
private:
    FreeMem* head= nullptr;
    bool started=false;
  //  MemoryAllocator();
};


#endif //PROJECT_BASE_MEMORYALLOCATOR_HPP
