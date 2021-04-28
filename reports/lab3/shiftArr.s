# shiftArr.s
.text
shiftArr:
.globl shiftArr
  loop_cnt:
    bgt a1, a2, loop_cnt_exit  # if(длина массива>числа сдвигов) goto loop_exit
    sub a2, a2, a1       # a2 -= a1
    jal zero, loop_cnt
  loop_cnt_exit:
  
  loop_shift:
  beqz a2, loop_shift_exit
  lw t0, 0(a0)

  li a3, 1
  
  loop_transfer:
    bgeu a3, a1, loop_transfer_exit # <=
  
    slli a4, a3, 2   # a4 = a3 << 2 = a3 * 4
    add a4, a0, a4   # a4 = a0 + a4 = a0 + a3 * 4

    lw t1, 0(a4)     # t1 = array[i]
    sw t0, 0(a4)     # array[i] = t0
    mv t0, t1
  
    addi a3, a3, 1   # a3 += 1
    
    jal zero, loop_transfer
  loop_transfer_exit:

  sw t0, 0(a0)       # array[0] = t0
  addi a2, a2, -1
  jal zero, loop_shift
  loop_shift_exit:
  
  ret