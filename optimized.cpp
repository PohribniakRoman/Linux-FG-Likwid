#include <iostream>
#include <vector>

using namespace std;

int fibonacci(int n) {
    if (n <= 1)
        return n;

    vector<int> fib(n + 1);
    fib[0] = 0;
    fib[1] = 1;

    for (int i = 2; i <= n; ++i) {
        fib[i] = fib[i - 1] + fib[i - 2]; 
    }

    return fib[n];
}

int main() {
    for (int i = 0; i < 100000; i++) {
        fibonacci(2000);
    }

    return 0;
}
