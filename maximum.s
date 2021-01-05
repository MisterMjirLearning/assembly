# PURPOSE: Find the maximum number in a set of numbers

# VARIABLES:
#
# Registers:
#
# %edi - Index of current item
# %ebx - Largest item
# %eax - Current item
#
# Memory locations:
#
# data_items - The set of numbers, 0 terminates the data

.section .data

data_items:
  .long 3, 67, 34, 222, 45, 75, 54, 34, 44, 33, 22, 11, 66, 0

.section .text
.global _start

_start:
  movl $0, %edi                  # Move 0 into the index register
  movl data_items(,%edi,4), %eax # Load the first byte of data
  movl %eax, %ebx                # The first item (%eax) is the biggest

start_loop:
  cmpl $0, %eax                  # Check if the loop is finished (current item will be equal to 0)
  je loop_exit
  incl %edi
  movl data_items(,%edi,4), %eax # Load the next value
  cmpl %ebx, %eax                # Compare greatest and current
  jle start_loop                 # Go to the loop beginning if the new number is smaller
  movl %eax, %ebx                # Move the current value into the largest value
  jmp start_loop                 # Go to the loop beginning

loop_exit:
  movl $1, %eax                  # exit() syscall, %ebx is status code and has the largest number
  int $0x80
