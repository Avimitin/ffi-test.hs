#include "factorial.h"

unsigned long long factorial(unsigned int n) {
  if (n == 0) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}
