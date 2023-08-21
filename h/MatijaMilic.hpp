//
// Created by os on 8/20/23.
//

#ifndef PROJECT_BASE_MATIJAMILIC_HPP
#define PROJECT_BASE_MATIJAMILIC_HPP


#include "_sem.hpp"
#include "buffer.hpp"

class MatijaMilic {
public:

    static MatijaMilic& getInstance();
    _sem* getCSem;
    _sem* putCSem;
private:



    MatijaMilic();
};


#endif //PROJECT_BASE_MATIJAMILIC_HPP
