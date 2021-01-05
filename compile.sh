#!/bin/bash

FILE=$1

as --32 ${FILE}.s -o ${FILE}.o

ld -m elf_i386 -s ${FILE}.o -o bin/${FILE}

rm ${FILE}.o
