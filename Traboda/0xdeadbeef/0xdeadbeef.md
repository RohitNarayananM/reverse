# 0xbeadbeef

Your input is your flag.

Flag format: inctfj{input1,input2}

## Solving

Here we get an assembly code and we have to input something so that all conditions in the code are satisfied

```assembly
extern printf
extern scanf

section .data
        fmt: db "%ld",0
        output: db "Correct",10,0
        out: db "Not Correct",10,0
        inp1: db "Input 1st number:",0
        inp2: db "Input 2nd number:",0

section .text
        global main
 
        main:
        push ebp
        mov ebp,esp
        sub esp,0x10
 
        push inp1
        call printf
        lea eax,[ebp-0x4]
        push eax
        push fmt
        call scanf

        push inp2
        call printf
        lea eax,[ebp-0xc]
        push eax
        push fmt
        call scanf

        mov ebx, DWORD[ebp-0xc]
        add ebx, DWORD[ebp-0x4]
        cmp ebx,0xdeadbeef
        jne N

        cmp DWORD[ebp-0x4], 0x6f56df65
        jg N

        cmp DWORD[ebp-0xc], 0x6f56df8d
        jg N
        cmp DWORD[ebp-0xc], 0x6f56df8d
        jl N
        jmp O

        N:
        push out
        call printf
        leave
        ret

        O:
        push output
        call printf

        leave
        ret

```



When we look at the code we can understand the second input is not greater than  **0x6f56df8d**

or less than **0x6f56df8d** so 2nd input is **0x6f56df8d**

sum of first and second input is **0xdeadbeef** so first input is

 **0xdeadbeef-0x6f56df8d = 0x6f56df62**

But the formatting is %ld so we have to conver this into integer

**0x6f56df62 = 1867964258** 

**0x6f56df8d = 1867964301**

## Flag

**flag{1867964258,1867964301}**