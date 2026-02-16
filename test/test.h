#pragma once

#include <iostream>

struct Bar {

    int bar(int x, int y) {
        return x*y;
    }

    /*
     * This is the foobar function; It squares things
     */
    float foobar(float x) {
        return x*x;
    }

    void x() {
        std::cout << "x called\n";
    }
};
