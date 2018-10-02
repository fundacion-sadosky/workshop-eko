#include <stdlib.h>

int main(int argc, char **argv) {
  char buffer[64];
  gets(buffer);
}

void aid_one() {
  __asm__("mov ecx, eax; ret");
  __asm__("inc ecx; ret");
  __asm__("dec eax; ret");
  __asm__("not eax; ret");
  __asm__("pop ebx; ret");
  __asm__("and ebx, eax; ret");
  __asm__("pop edx; ret");
  __asm__("pop eax; ret");
}

void aid_two() {
  __asm__("push esp; pop eax; ret");
  __asm__("pop esi; ret");
  __asm__("add eax, esi; ret");
  __asm__("mov edi, eax; ret");
  __asm__("and eax, esi; ret");
  __asm__("mov ebx, eax; ret");
  __asm__("pop eax; ret");
  __asm__("mov eax, dword ptr [eax]; ret");
  __asm__("pop ecx; ret");
  __asm__("push edi; call eax");
}
