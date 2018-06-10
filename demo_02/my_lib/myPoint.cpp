// myPoint.cpp
#include "myPoint.h"
#include <ostream>
using namespace std;

ostream &operator<<(ostream &os, Point &obj) {
  os << '(' << obj.x << ',' << obj.y << ')' << endl;
  return os;
}
