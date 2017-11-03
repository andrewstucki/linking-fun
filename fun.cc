#include <iostream>

extern "C" void CPPHello(const char * name) {
  std::cout << "Hello \"" << name << "\" From C++!" << std::endl;
}
