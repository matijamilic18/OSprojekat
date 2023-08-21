//
// Created by os on 8/17/23.
//

#include "../h/MemoryAllocator.hpp"

void *MemoryAllocator::mem_alloc(size_t sz) {
    void* ret= nullptr;
    if (!started){
        started=true;
        head= (FreeMem *)( HEAP_START_ADDR);
        head->next= nullptr;
        head->prev= nullptr;
        head->size=((uint64)HEAP_END_ADDR-(uint64)HEAP_START_ADDR)/MEM_BLOCK_SIZE;
    }

    for (FreeMem* cur=head;cur;cur=cur->next){
        if (sz<=cur->size){

            ret=cur;
            //ako ostane 1 ili vise blokova
            if (cur->size-sz>0){
                FreeMem* neww= (FreeMem*)((uint64) cur + sz * MEM_BLOCK_SIZE);
                if (cur->next){
                    cur->next->prev=neww;
                }
                if (cur->prev){
                    cur->prev->next=neww;
                }
                else{
                    head=neww;
                }
                neww->prev=cur->prev;
                neww->next=cur->next;
                neww->size=cur->size-sz;
                cur->size=sz;
                break;

            }
            //ako ne ostane nijedan
            if (cur->prev){
                cur->prev->next=cur->next;
            }else{
                head=cur->next;
            }
            if (cur->next){
                cur->next->prev=cur->prev;
            }
            cur->size=sz;
            break;

        }
    }
    if (ret){
        return (FreeMem*)ret + 1;
    }else{
        return nullptr;
    }

}

MemoryAllocator &MemoryAllocator::getInstance() {
    static MemoryAllocator mem;
    return mem;
}

int MemoryAllocator::mem_free(void *adr) {
    if ((void*)adr>HEAP_END_ADDR || (void*)adr<HEAP_START_ADDR) return -1;
    FreeMem* cur=0;
    if (!head|| adr<(void*)head){
        cur=0;
    }else {
        for (cur = head; cur->next != nullptr && adr > (void *) cur->next; cur = cur->next);
    }
        FreeMem* newSeg=(FreeMem*) adr - 1;

        newSeg->prev=cur;
        if (cur) newSeg->next=cur->next;
        else newSeg->next=head;
        if (cur) cur->next=newSeg;
        else head=newSeg;
        if (newSeg->next) newSeg->next->prev=newSeg;
        if (newSeg) tryToJoin (newSeg);
        if (cur) tryToJoin(cur);

        return 0;
}

int MemoryAllocator::tryToJoin(FreeMem *cur) {
    if (!cur)return -1;
    if (cur->next &&  (cur+cur->size)== cur->next){
        cur->size+=cur->next->size;
        cur->next = cur->next->next;
        if (cur->next) cur->next->prev = cur;
        return 0;
    }else{
        return -1;
    }
}

/*MemoryAllocator::MemoryAllocator() {
    head=(FreeMem*)HEAP_START_ADDR;

}*/
