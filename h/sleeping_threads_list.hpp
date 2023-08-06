//
// Created by os on 8/6/23.
//

#ifndef PROJECT_BASE_SLEEPING_THREADS_LIST_HPP
#define PROJECT_BASE_SLEEPING_THREADS_LIST_HPP


#include "tcb.hpp"

class sleeping_threads_list {

public:

    sleeping_threads_list() : head(nullptr), tail(nullptr){}

    void put(TCB* thread, time_t vreme){
        if (head){
            Elem* curr= head;
            Elem* prev= nullptr;
            while(curr!=tail && vreme>=curr->relTime){
                prev= curr;
                vreme-= curr->relTime;
                curr=curr->next;
            }


            if ((curr!= tail)|| (curr==tail && vreme<curr->relTime)){
                curr->relTime-=vreme;
                Elem* novi = new Elem(thread,curr,vreme);
                if(prev){
                    prev->next=novi;
                }else{
                    head=novi;
                }
            }else{

                    Elem* novi= new Elem(thread, nullptr,vreme-curr->relTime);
                    tail->next=novi;
                    tail=novi;

            }
        }else{
            tail=head= new Elem(thread, nullptr,vreme);
        }
    }

    void dec (){
        if (head) head->relTime--;
    }

    time_t peek(){
        if(head) return head->relTime;
        else return -1;
    }

    void removeFinished(){
        while(head && head->relTime==0  ){
            head->thread->setSleeping(false);
            Elem* p = head;
            head= head->next;
            if (!head) tail= nullptr;
            Scheduler::put(p->thread);
            delete p;
        }
    }

private:
    struct Elem{
        TCB* thread;
        Elem* next;
        time_t relTime;
        Elem(TCB* d, Elem* n, time_t t):thread(d),next(n),relTime(t){}
    };


    Elem* head, *tail;

};


#endif //PROJECT_BASE_SLEEPING_THREADS_LIST_HPP
