fibonacci(int):
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 24
        mov     DWORD PTR [rbp-20], edi
        cmp     DWORD PTR [rbp-20], 1
        jg      .L2
        mov     eax, DWORD PTR [rbp-20]
        jmp     .L3
.L2:
        mov     eax, DWORD PTR [rbp-20]
        sub     eax, 1
        mov     edi, eax
        call    fibonacci(int)
        mov     ebx, eax
        mov     eax, DWORD PTR [rbp-20]
        sub     eax, 2
        mov     edi, eax
        call    fibonacci(int)
        add     eax, ebx
.L3:
        mov     rbx, QWORD PTR [rbp-8]
        leave
        ret
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     DWORD PTR [rbp-4], 0
        jmp     .L5
.L6:
        mov     edi, 20
        call    fibonacci(int)
        add     DWORD PTR [rbp-4], 1
.L5:
        cmp     DWORD PTR [rbp-4], 99999
        jle     .L6
        mov     eax, 0
        leave
        ret