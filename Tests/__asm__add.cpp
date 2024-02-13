#include "../Include/__asm__add.hpp"

int main()
{
  {
    // Test 1:
    volatile u_ll a[] = { 1, 243, 3, 4, 5, 6, 0 }, b[] = { 7, 8, 9, 10, 11, 12, 0 }, size__b = sizeof(b) / sizeof(u_ll);

    __asm__add(a, b, size__b);
    
    for(u_ll u = 0; u < size__b; u++) { std::cout << a[u] << " "; }
    std::cout << std::endl;

    // Expected Output: 8 251 12 14 16 18 0
  }

  {
    // Test 2:
    volatile u_ll a[] = { 3, 0, 0, 1, 3, 1, 0 }, b[] = { 2, 0, 0, ULONG_LONG_MAX, ULONG_LONG_MAX, 12, 0 }, size__b = sizeof(b) / sizeof(u_ll);

    __asm__add(a, b, size__b);
    
    for(u_ll u = 0; u < size__b; u++) { std::cout << a[u] << " "; }
    std::cout << std::endl;

    // Expected Output: 5 0 0 0 3 14 0
  }

  {
    // Test 3:
    volatile u_ll a[] = { 3, 0 }, b[] = { ULONG_LONG_MAX, 0 }, size__b = sizeof(b) / sizeof(u_ll);

    __asm__add(a, b, size__b);
    
    for(u_ll u = 0; u < size__b; u++) { std::cout << a[u] << " "; }
    std::cout << std::endl;
    // printf("%llu, %llu\n", a[0], a[1]);

    // Expected Output: 2 1
  }

  {
    // Test 4:
    volatile u_ll a[] = {6512548990859393274, 1, 0 }, b[] = { 216110626640441270, 0, 0  }, size__b = sizeof(b) / sizeof(u_ll);

    __asm__add(a, b, size__b);
    
    for(u_ll u = 0; u < size__b; u++) { std::cout << a[u] << " "; }
    std::cout << std::endl;
    // printf("%llu, %llu\n", a[0], a[1]);

    // Expected Output: 
  }

  return 0;
}
