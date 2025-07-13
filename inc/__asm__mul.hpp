#ifndef __ASM__MUL_HPP
#define __ASM__MUL_HPP

#include <iostream>
#include "global.hpp"
#include "__asm__add.hpp"

/*
** size__lhs >= size__rhs,
** size__lhs - 1, @size__rhs - 1,
** ans must have space to fit the result
*/
static void __asm__mul(const volatile u_ll* lhs, const volatile u_ll* rhs, const u_ll size__lhs, const u_ll size__rhs, volatile u_ll* tmp, volatile u_ll* ans)
{
  // std::cout << "@__asm__mul: " << lhs << " " << rhs << " " << size__lhs << " " << size__rhs << " " << tmp << " " << ans << "\n";
  for(u_ll u = 0; u < size__rhs; u++)
  {
    /*
    asm(
      "movq $0, (%[tmp])\n\t"

      ".LOOP1:\n\t"
      "movq (%[lhs]), %%rax\n\t"
      "mulq %[rhs]\n\t"       // [rdx:rax]

      "addq %%rax, (%[tmp])\n\t"
      "adcq $0, %%rdx\n\t"
      "movq %%rdx, 8(%[tmp])\n\t"

      "leaq 8(%[lhs]), %[lhs]\n\t"
      "leaq 8(%[tmp]), %[tmp]\n\t"
      "dec  %[size__lhs]\n\t"       
      "jnz  .LOOP1"
      : 
      : [lhs]"r"(lhs), [rhs]"r"(rhs[u]), [tmp]"r"(tmp), [size__lhs]"r"(size__lhs)
      : "%rax", "%rdx"
    );
    */
    
    asm(
      "movq %0, %%r8\n\t"   // lhs
      "movq %1, %%r9\n\t"   // rhs[u]
      "movq %2, %%r10\n\t"  // tmp
      "mov  %3, %%rcx\n\t"  // size

      "movq $0, (%%r10)\n\t"

      ".LOOP1:\n\t"
      "movq (%%r8), %%rax\n\t"
      "mulq %%r9\n\t"       // ans: [rdx:rax]

      "addq %%rax, (%%r10)\n\t"
      "adcq $0, %%rdx\n\t"
      "movq %%rdx, 8(%%r10)\n\t"

      "addq $8, %%r8\n\t"
      "addq $8, %%r10\n\t"
      "dec  %%rcx\n\t"       
      "jnz  .LOOP1"
      : 
      : "m"(lhs), "m"(rhs[u]), "m"(tmp), "m"(size__lhs)
      : "cc", "%rax", "%rcx", "%rdx", "%r8", "%r9", "%r10"
    );

    // std::cout << "before __asm__add\n__asm__mul: " << lhs << " " << rhs << " " << size__lhs << " " << size__rhs << " " << tmp << " " << ans << "\n";
    __asm__add(ans + u, tmp, size__lhs + 1ull);
    // std::cout << "after __asm__add\n__asm__mul: " << lhs << " " << rhs << " " << size__lhs << " " << size__rhs << " " << tmp << " " << ans << "\n";
  }
  // std::cout << "!__asm__mul: " << lhs << " " << rhs << " " << size__lhs << " " << size__rhs << " " << tmp << " " << ans << "\n";

}

#endif