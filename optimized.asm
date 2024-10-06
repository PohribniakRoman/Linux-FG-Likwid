fibonacci(int):
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 72
        mov     DWORD PTR [rbp-68], edi
        cmp     DWORD PTR [rbp-68], 1
        jg      .L6
        mov     ebx, DWORD PTR [rbp-68]
        jmp     .L10
.L6:
        lea     rax, [rbp-33]
        mov     QWORD PTR [rbp-32], rax
        nop
        nop
        mov     eax, DWORD PTR [rbp-68]
        add     eax, 1
        movsx   rcx, eax
        lea     rdx, [rbp-33]
        lea     rax, [rbp-64]
        mov     rsi, rcx
        mov     rdi, rax
        call    std::vector<int, std::allocator<int> >::vector(unsigned long, std::allocator<int> const&) [complete object constructor]
        lea     rax, [rbp-33]
        mov     rdi, rax
        call    std::__new_allocator<int>::~__new_allocator() [base object destructor]
        nop
        lea     rax, [rbp-64]
        mov     esi, 0
        mov     rdi, rax
        call    std::vector<int, std::allocator<int> >::operator[](unsigned long)
        mov     DWORD PTR [rax], 0
        lea     rax, [rbp-64]
        mov     esi, 1
        mov     rdi, rax
        call    std::vector<int, std::allocator<int> >::operator[](unsigned long)
        mov     DWORD PTR [rax], 1
        mov     DWORD PTR [rbp-20], 2
        jmp     .L8
.L9:
        mov     eax, DWORD PTR [rbp-20]
        sub     eax, 1
        movsx   rdx, eax
        lea     rax, [rbp-64]
        mov     rsi, rdx
        mov     rdi, rax
        call    std::vector<int, std::allocator<int> >::operator[](unsigned long)
        mov     ebx, DWORD PTR [rax]
        mov     eax, DWORD PTR [rbp-20]
        sub     eax, 2
        movsx   rdx, eax
        lea     rax, [rbp-64]
        mov     rsi, rdx
        mov     rdi, rax
        call    std::vector<int, std::allocator<int> >::operator[](unsigned long)
        mov     eax, DWORD PTR [rax]
        add     ebx, eax
        mov     eax, DWORD PTR [rbp-20]
        movsx   rdx, eax
        lea     rax, [rbp-64]
        mov     rsi, rdx
        mov     rdi, rax
        call    std::vector<int, std::allocator<int> >::operator[](unsigned long)
        mov     DWORD PTR [rax], ebx
        add     DWORD PTR [rbp-20], 1
.L8:
        mov     eax, DWORD PTR [rbp-20]
        cmp     eax, DWORD PTR [rbp-68]
        jle     .L9
        mov     eax, DWORD PTR [rbp-68]
        movsx   rdx, eax
        lea     rax, [rbp-64]
        mov     rsi, rdx
        mov     rdi, rax
        call    std::vector<int, std::allocator<int> >::operator[](unsigned long)
        mov     ebx, DWORD PTR [rax]
        lea     rax, [rbp-64]
        mov     rdi, rax
        call    std::vector<int, std::allocator<int> >::~vector() [complete object destructor]
.L10:
        mov     eax, ebx
        jmp     .L13
        mov     rbx, rax
        lea     rax, [rbp-33]
        mov     rdi, rax
        call    std::__new_allocator<int>::~__new_allocator() [base object destructor]
        nop
        mov     rax, rbx
        mov     rdi, rax
        call    _Unwind_Resume
.L13:
        mov     rbx, QWORD PTR [rbp-8]
        leave
        ret
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     DWORD PTR [rbp-4], 0
        jmp     .L15
.L16:
        mov     edi, 2000
        call    fibonacci(int)
        add     DWORD PTR [rbp-4], 1
.L15:
        cmp     DWORD PTR [rbp-4], 99999
        jle     .L16
        mov     eax, 0
        leave
        ret
.LC0:
        .string "cannot create std::vector larger than max_size()"