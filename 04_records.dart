// =====================================================
// Records in Dart
// Demonstrates all important Record features.
// =====================================================

// -----------------------------------------------------
// Typedef (Alias)
// Gives a readable name to a Record type.
// -----------------------------------------------------
typedef Student = ({String name, int age, double cgpa});

// -----------------------------------------------------
// Function returning multiple values using a Record
// -----------------------------------------------------
(String, int) getUser() {
  return ("Ashish", 22);
}

void main() {
  // =====================================================
  // 1. Positional Record
  // Values are stored by their position.
  // Access using $1, $2, ...
  // =====================================================
  (String, int, bool) person = ("Ashish", 22, true);

  print("Positional Record: $person");
  print(person.$1);
  print(person.$2);
  print(person.$3);

  // =====================================================
  // 2. Named Record
  // Values are accessed using field names.
  // =====================================================
  ({String name, int age}) student = (name: "Rahul", age: 21);

  print("\nNamed Record:");
  print(student);
  print(student.name);
  print(student.age);

  // =====================================================
  // 3. Mixed Record
  // Can contain both positional and named fields.
  // =====================================================
  (String, {int age}) employee = ("Rohit", age: 30);

  print("\nMixed Record:");
  print(employee);
  print(employee.$1);
  print(employee.age);

  // =====================================================
  // 4. Record Type Annotation
  // Explicitly specifying the Record type.
  // =====================================================
  (String, double) product = ("Laptop", 75000);

  print("\nRecord Type:");
  print(product);

  // =====================================================
  // 5. Access Record Fields
  // Positional -> $1, $2...
  // Named -> fieldName
  // =====================================================
  print("\nAccess Fields:");
  print(product.$1);
  print(product.$2);
  print(student.name);

  // =====================================================
  // 6. Record Equality
  // Positional records having same values are equal.
  // =====================================================
  var r1 = (1, "Flutter");
  var r2 = (1, "Flutter");

  print("\nRecord Equality:");
  print(r1 == r2);

  // =====================================================
  // 7. Named Record Equality
  // Field names are part of the type.
  // Same values but different field names -> false.
  // =====================================================
  var point = (x: 10, y: 20);

  var coordinate = (a: 10, b: 20);

  print(point == coordinate);

  // =====================================================
  // 8. Record Shape
  // These have different types because field names differ.
  // Uncommenting below line gives compile error.
  // =====================================================

  ({int a, int b}) recordAB = (a: 1, b: 2);

  ({int x, int y}) recordXY = (x: 3, y: 4);

  // recordAB = recordXY; // Compile Error

  print("\nRecord Shape:");
  print(recordAB);
  print(recordXY);

  // =====================================================
  // 9. Positional Record Names don't affect type.
  // These are the same type.
  // =====================================================
  (int a, int b) pair1 = (10, 20);

  (int x, int y) pair2 = (30, 40);

  pair1 = pair2;

  print("\nPositional Names:");
  print(pair1);

  // =====================================================
  // 10. Function Returning Record
  // Returning multiple values.
  // =====================================================
  var user = getUser();

  print("\nFunction Return:");
  print(user);
  print(user.$1);
  print(user.$2);

  // =====================================================
  // 11. Record Destructuring
  // Extract values into variables.
  // =====================================================
  var (name, age) = getUser();

  print("\nDestructuring:");
  print(name);
  print(age);

  // =====================================================
  // 12. Named Record Destructuring
  // =====================================================
  var (:name, :age) = (name: "Ashish", age: 22);

  print("\nNamed Destructuring:");
  print(name);
  print(age);

  // =====================================================
  // 13. Record inside List
  // =====================================================
  List<(String, int)> players = [("Virat", 36), ("Rohit", 38), ("Gill", 25)];

  print("\nList of Records:");
  print(players);

  // =====================================================
  // 14. Record inside Map
  // =====================================================
  Map<int, (String, int)> users = {1: ("Ashish", 22), 2: ("Rahul", 24)};

  print("\nMap of Records:");
  print(users);

  // =====================================================
  // 15. Record inside Set
  // Records can also be stored in Sets.
  // =====================================================
  Set<(int, int)> coordinates = {
    (1, 2),
    (3, 4),
    (1, 2), // Duplicate ignored
  };

  print("\nSet of Records:");
  print(coordinates);

  // =====================================================
  // 16. Nested Records
  // Records can contain other Records.
  // =====================================================
  var nested = ("Student", (name: "Ashish", age: 22));

  print("\nNested Record:");
  print(nested);
  print(nested.$2.name);

  // =====================================================
  // 17. Typedef (Alias)
  // Makes long Record types easier to read.
  // =====================================================
  Student s = (name: "Ankit", age: 21, cgpa: 9.1);

  print("\nTypedef:");
  print(s);
  print(s.name);

  // =====================================================
  // 18. Records are Immutable
  // Their fields cannot be changed.
  // Uncommenting below line gives compile error.
  // =====================================================

  // student.name = "ABC"; // Error

  print("\nImmutable:");
  print(student);

  // =====================================================
  // 19. Records can have different data types.
  // =====================================================
  var mixed = ("Flutter", 3.0, true, [1, 2, 3]);

  print("\nMixed Types:");
  print(mixed);

  // =====================================================
  // 20. Final Example
  // =====================================================
  var finalRecord = (id: 101, name: "Laptop", price: 75000.0, available: true);

  print("\nFinal Record:");
  print(finalRecord);
  print(finalRecord.id);
  print(finalRecord.name);
  print(finalRecord.price);
  print(finalRecord.available);
}
