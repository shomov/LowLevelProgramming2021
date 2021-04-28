# setup.s
.text
start:
.globl start

  call main

finish:
  
  li a0, 17
  ecall      # выход с кодом завершения
