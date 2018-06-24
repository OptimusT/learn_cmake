# cmake notes

## 0. single `main.cpp`

```c++
// main.cpp
#include <iostream>
using namespace std;

int main(int argc, char const *argv[]) {
  cout<<"hello world"<<endl;
  return 0;
}
```

the cmake file is simple:

```
// CMakeLists.txt
cmake_minimum_required(VERSION 2.6)
project(test)
add_executable(main_bin main.cpp)
```
## 1. `main.cpp` + `my_math.h`

```c++
// main.cpp
#include "my_math.h"
#include <iostream>

using namespace std;

int main(int argc, char const *argv[]) {
  cout << mySqrt(100) << endl << mySqrt(-1000) << endl;
  return 0;
}
```
```c++
#include <cmath>

double mySqrt(double x) {
  if (x < 0)
    return sqrt(-x);
  return sqrt(x);
}
```
this time, the `CMakeLists.txt` is still the same.
```
cmake_minimum_required(VERSION 2.6)

project(test)

# METHOD 1
# aux_source_directory(. DIR_SRCS)
# add_executable(testbin ${DIR_SRCS})


# METHOD 2
add_executable(testbin main.cpp)
```
method 1 and 2 are the same, except for the latter one explicitly writes all the `*.cpp` files

## 2. `main.cpp` + `my_lib`/`*.cpp`, `*.h`
```c++
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
```
 This is the main function, while the other libs created by myself is in: ./my_lib

 ```c++
 // my_math.h
 #include <cmath>

 double mySqrt(double x) {
   if (x < 0)
     return sqrt(-x);
   return sqrt(x);
 }
```

and

```c++
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
```

```c++
// myPoint.cpp
#include "myPoint.h"
#include <ostream>
using namespace std;

ostream &operator<<(ostream &os, Point &obj) {
  os << '(' << obj.x << ',' << obj.y << ')' << endl;
  return os;
}
```

This time, `CMakeLists.txt` is as follows:
- A `CMakeLists.txt` inside `my_lib`:

```
# CMakeLists.txt in my_lib
aux_source_directory(. DIR_LIBS_SRCS)
add_library(my_lib_functions ${DIR_LIBS_SRCS})

```

- A `CMakeLists.txt` in the `demo_02`

```
# CMakeLists.txt in ./
cmake_minimum_required(VERSION 2.6)
project(demo_02)

# find all *.cpp in the ./ and save to DIR_SRCS
aux_source_directory(. DIR_SRCS)

# add my_lib sub-folder
add_subdirectory(my_lib)

add_executable(demo2_bin main.cpp)

# add link library
target_link_libraries(demo2_bin my_lib_functions)
```
The added part :
`target_link_libraries` is after the `add_executable` part.


## 3. `main.cpp` + `folder1` + `folder2`

> notes:

keyword | explaination
-|-
`add_library` | generate static lib
`add_subdirectory` | add subdirectory, `CMakeLists.ttx` is needed
`target_link_libraries` | link libs after `add_executable`.
