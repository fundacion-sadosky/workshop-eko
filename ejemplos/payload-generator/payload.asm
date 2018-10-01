global _start

section .text

_start:

  call load_message

  db "Hello, world!"

skipped:

  mov eax, 0x9
  inc eax 
  mov byte [ecx + 13], al

  mov ebx, 0x1
  mov edx, 0xe
  mov eax, 0x4
  int 0x80

  xor ebx, ebx
  mov eax, 0x1
  int 0x80

load_message:
  pop ecx
  jmp skipped
