#pragma once

#include <iostream>

#include <big_uint/types.hpp>

/*
** lhs and rhs should be of equal size
** lhs[last] == 0,
** rhs[last] == 0,
** destination: lhs,
*/
inline void asm_add(volatile u64* lhs, const volatile u64* rhs, u64 size)
{
    asm("mov  $1, %%al\n" // initialize carry

        ".LOOP_%=:\n\t"
        "cmpb $1, %%al\n\t" // restore carry
        "movq (%[rhs]), %%r10\n\t"
        "adcq %%r10, (%[lhs])\n\t" // add with carry
        "setae  %%al\n\t"          // set carry

        "leaq 8(%[lhs]), %[lhs]\n\t"
        "leaq 8(%[rhs]), %[rhs]\n\t"

        "dec  %[size]\n\t"
        "jnz  .LOOP_%=\n"

        :
        : [lhs] "r"(lhs), [rhs] "r"(rhs), [size] "r"(size)
        : "cc", "memory", "%rax", "%r10");

    /*

    asm(
      "movq %0, %%r8\n\t"
      "movq %1, %%r9\n\t"
      "mov  %2, %%rcx\n\t"
      "mov  $1, %%al\n" // carry: al

      ".LOOP0:\n\t"
      "cmpb $1, %%al\n\t" // restore carry
      "movq (%%r9), %%rdx\n\t"
      "adcq %%rdx, (%%r8)\n\t" // add to lhs
      "setae  %%al\n\t" // set carry

      "addq $8, %%r8\n\t"
      "addq $8, %%r9\n\t"
      "dec  %%rcx\n\t"
      "jnz  .LOOP0\n"

      :
      : "m"(lhs), "m"(rhs), "m"(size)
      : "%rax", "rcx", "%rdx", "%r8", "%r9"
    );

    */
}