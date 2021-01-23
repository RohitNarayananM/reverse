extern printf
extern scanf

section .data
     do: db "%d",0
     dont: db "%d",10,0
section .text
     global main
     
     main:
     push ebp
     mov ebp, esp
     
     lea ebx,[ebp-0x4]
     push ebx
     push do
     call scanf
     mov ebx,dword [ebp-0x4]
     
     mov dword [ebp-0x8],0
     push dword [ebp-0x8]
     push dont
     call printf
     mov dword [ebp-0x8],1
     push dword [ebp-0x8]
     push dont
     call printf
     
     
     sub ebx,2
     mov ecx,1
     mov eax,0
     
     loop:
     add eax,ecx
     mov edx,ecx
     mov ecx,eax
     mov eax,edx
     mov dword [ebp-0x8],eax
     mov dword [ebp-0x12],ecx
     push ecx
     push dont
     call printf
     mov eax,dword [ebp-0x8]
     mov ecx,dword [ebp-0x12]
     dec ebx
     cmp ebx,0
     jg loop
     
     leave
     ret