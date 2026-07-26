void main() {
  //==========================================================
  // TYPEDEF
  //
  // typedef = Type Definition
  //
  // It creates another name (alias) for an existing type.
  //
  // Mainly used for:
  // 1. Function types
  // 2. Complex generic types
  //==========================================================

  //----------------------------------------------------------
  // Function Typedef
  //----------------------------------------------------------

  MathOperation add = addition;

  MathOperation multiply = multiplication;

  print("Addition : ${add(10, 20)}");

  print("Multiply : ${multiply(10, 20)}");

  //----------------------------------------------------------
  // Typedef with Generic Collections
  //----------------------------------------------------------

  StudentMarks marks = {"Ashish": 95, "Rahul": 90, "Aman": 85};

  print("\nStudent Marks");

  print(marks);

  //----------------------------------------------------------
  // Typedef with List
  //----------------------------------------------------------

  NumberList numbers = [1, 2, 3, 4, 5];

  print("\nNumbers");

  print(numbers);

  //----------------------------------------------------------
  // Passing typedef as parameter
  //----------------------------------------------------------

  print("\nCalculator");

  calculate(15, 5, add);

  calculate(15, 5, multiply);
}

//==========================================================
// typedef for Function
//
// Instead of writing:
//
// int Function(int,int)
//
// everywhere,
// create an alias.
//
// MathOperation means:
//
// A function that takes two integers
// and returns an integer.
//==========================================================

typedef MathOperation = int Function(int a, int b);

//==========================================================
// typedef for Map
//==========================================================

typedef StudentMarks = Map<String, int>;

//==========================================================
// typedef for List
//==========================================================

typedef NumberList = List<int>;

//==========================================================
// Functions
//==========================================================

int addition(int a, int b) {
  return a + b;
}

int multiplication(int a, int b) {
  return a * b;
}

//==========================================================
// Function accepting another function
//==========================================================

void calculate(int a, int b, MathOperation operation) {
  print(operation(a, b));
}
