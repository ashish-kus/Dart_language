// patterns_demo.dart
// A single program showing all the major Dart pattern concepts,
// with print statements explaining what's happening at each step.

import 'dart:math' as math;

// ---- Setup for "Algebraic data type" example ----
sealed class Shape {}

class Square implements Shape {
  final double length;
  Square(this.length);
}

class Circle implements Shape {
  final double radius;
  Circle(this.radius);
}

double calculateArea(Shape shape) => switch (shape) {
  Square(length: var l) => l * l,
  Circle(radius: var r) => math.pi * r * r,
};

// ---- Setup for "Destructuring class instances" example ----
class Foo {
  final String one;
  final int two;
  Foo({required this.one, required this.two});
}

void main() {
  print('===== 1. Variable declaration pattern =====');
  // Destructure a list into 3 separate variables in one line.
  var numList = [1, 2, 3];
  var [a, b, c] = numList;
  print('numList = $numList -> a=$a, b=$b, c=$c');

  print('\n===== 2. Variable assignment pattern (swap) =====');
  var (left, right) = ('left', 'right');
  print('Before swap: left=$left, right=$right');
  (left, right) = (right, left); // swap without a temp variable
  print('After swap:  left=$left, right=$right');

  print('\n===== 3. Switch statement with constant + range patterns =====');
  void describeNumber(int number) {
    const first = 1;
    const last = 10;
    switch (number) {
      case 1:
        print('$number -> one');
      case >= first && <= last:
        print('$number -> in range 1-10');
      default:
        print('$number -> out of range');
    }
  }

  describeNumber(1);
  describeNumber(5);
  describeNumber(99);

  print('\n===== 4. Destructuring multiple return values (records) =====');
  (String, int) userInfo() => ('doug', 25);
  var (name, age) = userInfo();
  print('name=$name, age=$age');

  print('\n===== 5. Destructuring a class instance =====');
  final myFoo = Foo(one: 'one-value', two: 2);
  var Foo(:one, :two) = myFoo;
  print('one=$one, two=$two');

  print('\n===== 6. Algebraic data type style with switch =====');
  print('Square area: ${calculateArea(Square(4))}');
  print('Circle area: ${calculateArea(Circle(3)).toStringAsFixed(2)}');

  print('\n===== 7. for-in loop destructuring a Map =====');
  Map<String, int> hist = {'a': 23, 'b': 100};
  for (var MapEntry(:key, value: count) in hist.entries) {
    print('$key occurred $count times');
  }

  print('\n===== 8. Validating & destructuring JSON-like data =====');
  var goodData = {
    'user': ['Lily', 13],
  };
  var badData = {
    'user': ['Lily', 'not-a-number'], // wrong type for age
  };

  void checkUser(Map<String, Object?> data) {
    if (data case {'user': [String uname, int uage]}) {
      print('Valid: User $uname is $uage years old.');
    } else {
      print('Invalid: data does not match expected shape -> $data');
    }
  }

  checkUser(goodData);
  checkUser(badData);
}
