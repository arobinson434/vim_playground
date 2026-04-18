
#include <iostream>   
#include "test.h"

void foo() {
    std::cout << "sdfsd";
    
}

int main() {
    Bar bar_obj;

    std::cout << "test " << bar_obj.bar(1,2);
    bar_obj.foobar(42);

    return 0;
}

