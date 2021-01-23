extern printf
extern scanf

section .data
     do: db "%d",0
     sum: db "The sum is:%d",10,0
     dif: db "The difference is:%d",10,0
     pro: db "The product is:%d",10,0
     by: db "The what is:%d",10,0
section .text
     global main
     
     main:
     push ebp
     mov ebp, esp
     
     lea eax,[ebp-0x4]
     push eax
     push do
     call scanf
     
     lea edx,[ebp-0x8]
     push edx
     push do
     call scanf
     
     mov eax,dword [ebp-0x4]
     mov ebx,dword [ebp-0x8]
     add eax,ebx
     mov dword [ebp-0x8],eax
     
     push dword [ebp-0x8]
     push sum
     call printf
     
     sub dword [ebp-0x8],ebx
     sub dword [ebp-0x8],ebx
     push dword [ebp-0x8]
     push dif
     call printf
     
     add dword [ebp-0x8],ebx
     mov eax,dword [ebp-0x8]
     mul ebx
     push eax
     push pro
     call printf
     
     xor edx,edx
     mov ecx,ebx
     mov eax,dword [ebp-0x8]
     idiv ecx
     push eax
     push by
     call printf
     
     leave
     ret