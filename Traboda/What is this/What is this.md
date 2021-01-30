# What is this?

What is this weird file? There is no extension for it. Can you figure out what kind of file it is? Or better yet, can you figure out for which architecture is this file meant for?

The flag is the name of the architecture wrapped in the flag format: flag{}

## Solving

we are given a file A.out When we run 1file1 command on this file, it gives

```
whatisthis.out: ELF 64-bit LSB shared object, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, for GNU/Linux 3.2.0, BuildID[sha1]=506e836cb60b0b6c506ebd9822312d75d1417b53, not stripped
```

From this we can understand that the architecture is x86-64

## Flag

**flag{x86-64}**