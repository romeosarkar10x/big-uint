// #include <chrono>
#include <iostream>
#include "../Include/Big_uInt.hpp"
int main()
{
  { // Test 1:
    // auto time__start = std::chrono::high_resolution_clock::now();
    Big_uInt u { 123234325325324234ull }, u2 { 3434253522323432432ull };
    
    u *= u2;
    std::cout << u.to_string__decimal() << "\n";
    
    u *= u2;
    std::cout << u.to_string__decimal() << "\n";

    u *= u;
    std::cout << u.to_string__decimal() << "\n";

    u *= u2;
    std::cout << u.to_string__decimal() << "\n";

    // u += 2;


    // auto time__end = std::chrono::high_resolution_clock::now();
    // std::clog << "time taken: " << std::chrono::duration_cast<std::chrono::milliseconds>(time__end - time__start) << "\n";
    
    // Expected Output:
    // 423217915819646523952300956191157088
    // 1453437618114002991457766467425687884976095329865878016
    // 2112480909748906396711497566092252357243843083301243035800524473961518206533116269852293503552519266592096256
    // 7254795005146190766748451039475501894940768237903742268134422887841567890742372467327025468050054371898555450651751676056174592

  }
  return 0;
}