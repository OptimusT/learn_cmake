// my_math.h
#include <cmath>

double mySqrt(double x) {
  if (x < 0)
    return sqrt(-x);
  return sqrt(x);
}
