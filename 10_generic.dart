void main() {
  //==========================================================
  // GENERICS IN DART
  //
  // Generic = A placeholder for a data type.
  //
  // Instead of writing separate classes/functions for int,
  // String, double, etc., write them once using a type
  // parameter (usually T).
  //
  // Common generic names:
  // T = Type
  // E = Element
  // K = Key
  // V = Value
  //==========================================================

  //----------------------------------------------------------
  // Generic Class
  //----------------------------------------------------------

  Box<int> intBox = Box(100);
  Box<String> stringBox = Box("Flutter");
  Box<double> doubleBox = Box(99.5);

  print("Integer Box : ${intBox.value}");
  print("String Box  : ${stringBox.value}");
  print("Double Box  : ${doubleBox.value}");

  //----------------------------------------------------------
  // Generic List
  //----------------------------------------------------------

  List<int> numbers = [10, 20, 30];

  print("\nGeneric List");
  print(numbers);

  //----------------------------------------------------------
  // Generic Map
  //----------------------------------------------------------

  Map<String, int> marks = {"Math": 90, "Science": 95};

  print("\nGeneric Map");
  print(marks);

  //----------------------------------------------------------
  // Generic Function
  //----------------------------------------------------------

  print("\nGeneric Function");

  print(firstElement(numbers));

  print(firstElement(["Apple", "Mango", "Banana"]));

  //----------------------------------------------------------
  // Generic Method
  //----------------------------------------------------------

  Printer printer = Printer();

  printer.printValue(100);

  printer.printValue("Hello");

  printer.printValue(true);
}

//==========================================================
// Generic Class
//
// T is NOT a datatype.
//
// It is a placeholder.
//
// When someone creates:
//
// Box<int>
//
// T becomes int.
//
// When someone creates:
//
// Box<String>
//
// T becomes String.
//==========================================================

class Box<T> {
  T value;

  Box(this.value);
}

//==========================================================
// Generic Function
//
// Works with every datatype.
//
// T becomes the datatype of the list.
//==========================================================

T firstElement<T>(List<T> list) {
  return list.first;
}

//==========================================================
// Generic Method
//==========================================================

class Printer {
  void printValue<T>(T value) {
    print(value);
  }
}
