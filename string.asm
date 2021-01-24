extern printf
extern scanf

section .data
        test: db "%s",0
        print: db "%c",10,0
        string: db 0

section .text
        global main
        
        main:
        push ebp
        mov ebp, esp
        
        lea eax,[string]
        push eax
        push test
        call scanf
        
        lea ebx,[string]
        loop:
        push dword [ebx]
        push print
        call printf
        inc ebx
        cmp dword [ebx],0
        jg loop
        
        leave
        ret