// main.cpp
#include "my_math/my_math.h"
#include "my_point/myPoint.h"
#include <iostream>

using namespace std;

int main(int argc, char const *argv[]) {
  cout << mySqrt(100) << endl << mySqrt(-1000) << endl;
  Point A(100, 200);
  cout << A << endl;
  return 0;
}
