extern printf
extern scanf

section .data
        test: db "%d",0
        print: db "%d",10,0

section .text
        global main
        
        main:
        push ebp
        mov ebp, esp
        
        lea eax,[ebp-0x4]
        push eax
        push test
        call scanf
        
        mov ebx,dword [ebp-0x4]
        mov eax, 1
        loop:
        mul ebx
        sub ebx,1
        cmp ebx,0
        jne loop
        
        push eax
        push print
        call printf
        leave
        ret
