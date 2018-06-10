// main.cpp
#include "my_lib/myPoint.h"
#include "my_lib/my_math.h"
#include <iostream>

using namespace std;

int main(int argc, char const *argv[]) {
  cout << mySqrt(100) << endl << mySqrt(-1000) << endl;
  Point A(100, 200);
  cout << A << endl;
  return 0;
}
