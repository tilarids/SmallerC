/*
  Copyright (c) 2014-2015, Alexey Frunze
  2-clause BSD license.
*/
#include <unistd.h>

#ifdef _DOS

#ifdef __HUGE__
static
int DosClose(int handle, unsigned* error)
{
  asm("mov ah, 0x3e\n"
      "mov bx, [bp + 8]\n"
      "int 0x21");
  asm("movzx ebx, ax\n"
      "cmc\n"
      "sbb ax, ax\n"
      "and eax, 1\n"
      "mov esi, [bp + 12]\n"
      "ror esi, 4\n"
      "mov ds, si\n"
      "shr esi, 28\n"
      "mov [si], ebx");
}
#endif // __HUGE__

#ifdef __SMALLER_C_16__
static
int DosClose(int handle, unsigned* error)
{
  asm("mov ah, 0x3e\n"
      "mov bx, [bp + 4]\n"
      "int 0x21");
  asm("mov bx, ax\n"
      "cmc\n"
      "sbb ax, ax\n"
      "and ax, 1\n"
      "mov si, [bp + 6]\n"
      "mov [si], bx");
}
#endif // __SMALLER_C_16__

#ifdef _DPMI
static
int DosClose(int handle, unsigned* error)
{
  asm("mov ah, 0x3e\n"
      "mov ebx, [ebp + 8]\n"
      "int 0x21");
  asm("mov ebx, eax\n"
      "cmc\n"
      "sbb eax, eax\n"
      "and eax, 1\n"
      "mov esi, [ebp + 12]\n"
      "and ebx, 0xffff\n"
      "mov [esi], ebx");
}
#endif // _DPMI

int close(int fd)
{
  unsigned error;
  if (DosClose(fd, &error))
    return 0;
  return -1;
}

#endif // _DOS

#ifdef _WINDOWS

#include "iwin32.h"

int close(int fd)
{
  // TBD??? Fix this hack???
  // GetStdHandle(STD_INPUT_HANDLE), GetStdHandle(STD_OUTPUT_HANDLE) and GetStdHandle(STD_ERROR_HANDLE)
  // appear to always return 3, 7 and 11 when there's no redirection. Other handles (e.g. those of files)
  // appear to have values that are multiples of 4. I'm not sure if GetStdHandle() can ever return values
  // 0, 1 and 2 or if any other valid handle can ever be equal to 0, 1 or 2.
  // If 0, 1 and 2 can be valid handles in the system, I'll need to renumber/translate handles in the C library.
  if (fd >= STDIN_FILENO && fd <= STDERR_FILENO)
    fd = GetStdHandle(STD_INPUT_HANDLE - fd);

  return CloseHandle(fd) ? 0 : -1;
}

#endif // _WINDOWS

#ifdef _LINUX

int close(int fd)
{
  asm("mov eax, 6\n" // sys_close
      "mov ebx, [ebp + 8]\n"
      "int 0x80");
}

#endif // _LINUX

#ifdef _MACOS

int close(int fd)
{
  asm("mov eax, 6\n" // sys_close
      "push dword [ebp + 8]\n"
      "sub esp, 4\n"
      "int 0x80");
}

#endif // _MACOS

