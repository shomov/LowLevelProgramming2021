# main.s
.text
main:
.globl main
  addi sp, sp, -16 
  sw ra, 12(sp)
  la a0, array
  lw a1, lenght
  lw a2, shift
  
  call shiftArr
  
  lw ra, 12(sp) # восстановление ra
  addi sp, sp, 16 # освобождение памяти в стеке
  
  ret
   
   
.data
array:
 .word 3, 7, 11, 13, 17 
.rodata
lenght:
 .word 5
shift:
 .word 7
