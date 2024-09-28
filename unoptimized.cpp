#include <iostream>

using namespace std;

int fibonacci(int n) {
    if (n <= 1){
        return n;
    }
    return fibonacci(n - 1) + fibonacci(n - 2);  
}

int main() {
    for (int i = 0; i < 100000; i++) {
        fibonacci(20);
    }
    
    return 0;
}