// myPoint.h
#pragma once
#include <ostream>
using namespace std;
class Point {
  friend ostream &operator<<(ostream &os, Point &obj);

public:
  int x;
  int y;
  Point(int xx = 0, int yy = 0) : x(xx), y(yy){};
};
