cmake_minimum_required(VERSION 3.19)
project(riscv C)

set(CMAKE_C_STANDARD 99)

add_executable(riscv main.c shiftArr.h shiftArr.c)