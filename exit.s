# PURPOSE: Simple program that exits and returns
#          a status code to the Linux kernel

# INPUT: none

# OUTPUT: returns a status code.
#         $ echo $?
#         to view after running

# VARIABLES:
#           %eax holds the system call number
#           %ebx holds the return status

.section .data

.section .text
.globl _start

_start:
  movl $1, %eax         # Linux kernel command number (sys call) for exit

  movl $7, %ebx         # Status number being returned

  int $0x80             # Wakes kernel to run the exit command
