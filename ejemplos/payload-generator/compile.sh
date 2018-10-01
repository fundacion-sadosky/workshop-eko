#!/bin/bash

nasm -f elf32 payload.asm -o payload.o

ld -m elf_i386 payload.o -o payload

objcopy -O binary --only-section=.text payload payload.bin

./ruby-fmt.rb

rm payload
rm payload.o
