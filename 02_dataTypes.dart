void main() {
  // =====================================================
  // 1. int
  // Stores whole numbers (no decimal values).
  // =====================================================
  int age = 22;
  print("int: $age");

  // =====================================================
  // 2. double
  // Stores decimal (floating-point) numbers.
  // =====================================================
  double height = 5.9;
  print("double: $height");

  // =====================================================
  // 3. num
  // Parent type of both int and double.
  // Can store either whole numbers or decimal numbers.
  // =====================================================
  num marks = 95;
  print("num (int): $marks");

  marks = 95.5;
  print("num (double): $marks");

  // =====================================================
  // 4. String
  // Stores text enclosed in single or double quotes.
  // =====================================================
  String name = "Ashish";
  print("String: $name");

  // =====================================================
  // 5. bool
  // Stores only two values:
  // true or false.
  // Commonly used in conditions and loops.
  // =====================================================
  bool isStudent = true;
  print("bool: $isStudent");

  // =====================================================
  // 6. List
  // Ordered collection of values.
  // Duplicate values are allowed.
  // Access elements using their index (starts from 0).
  // =====================================================
  List<String> fruits = ["Apple", "Banana", "Mango"];
  print("List: $fruits");

  // First element
  print(fruits[0]);

  // =====================================================
  // 7. Set
  // Unordered collection of unique values.
  // Duplicate values are automatically removed.
  // =====================================================
  Set<int> numbers = {1, 2, 3, 4, 4, 5};
  print("Set: $numbers");

  // =====================================================
  // 8. Map
  // Stores data as key-value pairs.
  // Similar to a dictionary in Python or object in JSON.
  // =====================================================
  Map<String, dynamic> student = {"name": "Ashish", "age": 22, "cgpa": 8.5};

  print("Map: $student");

  // Access value using key
  print(student["name"]);

  // =====================================================
  // 9. Runes
  // Used to represent Unicode characters.
  // Useful for emojis and special symbols.
  // =====================================================
  Runes heart = Runes('\u2665');
  print("Runes: ${String.fromCharCodes(heart)}");

  // =====================================================
  // 10. Symbol
  // Represents the name of an identifier.
  // Mostly used internally by Dart.
  // Rarely used in Flutter applications.
  // =====================================================
  Symbol symbol = #myVariable;
  print("Symbol: $symbol");

  // =====================================================
  // 11. dynamic
  // Variable type can change during runtime.
  // No compile-time type checking.
  // Use only when necessary.
  // =====================================================
  dynamic value = 10;
  print("dynamic int: $value");

  value = "Hello";
  print("dynamic String: $value");

  value = true;
  print("dynamic bool: $value");

  // =====================================================
  // 12. Object
  // Base class of almost every type in Dart.
  // Can store any NON-NULL object.
  // =====================================================
  Object obj = "Flutter";
  print("Object: $obj");

  // =====================================================
  // 13. Object?
  // Nullable Object.
  // Can store any object OR null.
  // =====================================================
  Object? anything = null;
  print("Object?: $anything");

  anything = 100;
  print("Object?: $anything");

  // =====================================================
  // 14. var
  // Dart automatically determines the data type.
  // Once assigned, the type cannot change.
  // =====================================================
  var city = "Delhi";
  print("var: $city");

  // city = 100; // Error because city is inferred as String.

  // =====================================================
  // 15. final
  // Value can be assigned ONLY ONCE.
  // Value is decided at runtime.
  // =====================================================
  final country = "India";
  print("final: $country");

  // country = "USA"; // Error

  // =====================================================
  // 16. const
  // Compile-time constant.
  // Value must be known before the program runs.
  // =====================================================
  const pi = 3.14159;
  print("const: $pi");

  // =====================================================
  // 17. Nullable Types (?)
  // By default, variables cannot store null.
  // Adding ? allows the variable to hold null.
  // =====================================================
  String? nickname;

  print("Nullable String: $nickname");

  nickname = "AK";
  print("Nullable String: $nickname");

  // =====================================================
  // 18. Null-aware Operator (??)
  // Returns the left value if it is NOT null,
  // otherwise returns the right value.
  // =====================================================
  String? language;
  print(language ?? "Dart");

  // =====================================================
  // 19. Null-aware Access (?.)
  // Calls a property or method only if the object
  // is not null.
  // =====================================================
  String? company;
  print(company?.length);

  company = "Google";
  print(company?.length);

  // =====================================================
  // 20. Type Checking
  // "is" checks if an object is of a given type.
  // "is!" checks if it is NOT of that type.
  // =====================================================
  print(age is int);
  print(age is! String);

  // =====================================================
  // 21. Record
  // A Record stores multiple values of different types.
  // Similar to a tuple in Python.
  // =====================================================

  (int, String, bool) person = (22, "Ashish", true);

  print(person);
  print(person.$1); // 22
  print(person.$2); // Ashish
  print(person.$3); // true

  // =====================================================
  // 22. Function
  // Functions are objects in Dart.
  // They can be stored in variables and passed around.
  // =====================================================

  int add(int a, int b) {
    return a + b;
  }

  Function operation = add;

  print(operation(10, 20));

  // =====================================================
  // 24. Future
  // Represents a value that will be available later.
  // Used for API calls and asynchronous programming.
  // =====================================================

  Future<String> fetchData() async {
    return "Data Loaded";
  }

  // Inside main()
  fetchData().then((value) {
    print(value);
  });

  // =====================================================
  // 25. Iterable
  // Returned by methods like map() and where().
  // Convert it to a List using toList().
  // =====================================================
  List<int> numberss = [1, 2, 3, 4, 5];

  Iterable<int> even = numberss.where((n) => n.isEven);

  print(even);
  print(even.toList());

  // =====================================================
  // 26. late
  // Declares a non-null variable that will be initialized later.
  // =====================================================

  late String college;

  college = "IIT Delhi";

  print(college);

  // =====================================================
  // 27. Never
  // Used for functions that never return normally.
  // Usually because they always throw an exception.
  // =====================================================

  Never showError() {
    throw Exception("Something went wrong");
  }

  // Don't call it here or the program will stop.
}
