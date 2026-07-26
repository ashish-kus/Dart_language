void main() {
  // ============================================================
  // DART MAP
  // A Map stores data in the form of Key : Value pairs.
  // Every key must be unique.
  // Syntax:
  // Map<KeyType, ValueType> mapName = {};
  // ============================================================

  Map<String, int> marks = {"Ashish": 90, "Rahul": 85, "Priya": 95};

  print("Original Map");
  print(marks);

  // ============================================================
  // 1. Accessing a value using a key
  // ============================================================
  print("\n1. Access Value");
  print(marks["Ashish"]); // 90

  // If the key doesn't exist, it returns null.
  print(marks["Rohan"]); // null

  // ============================================================
  // 2. Adding a new key-value pair
  // ============================================================
  print("\n2. Add Entry");

  marks["Aman"] = 80;

  print(marks);

  // ============================================================
  // 3. Updating an existing value
  // ============================================================
  print("\n3. Update Entry");

  marks["Rahul"] = 92;

  print(marks);

  // ============================================================
  // 4. Remove an entry
  // ============================================================
  print("\n4. Remove Entry");

  marks.remove("Priya");

  print(marks);

  // ============================================================
  // 5. containsKey()
  // Checks whether a key exists
  // ============================================================
  print("\n5. containsKey()");

  print(marks.containsKey("Ashish")); // true
  print(marks.containsKey("Priya")); // false

  // ============================================================
  // 6. containsValue()
  // Checks whether a value exists
  // ============================================================
  print("\n6. containsValue()");

  print(marks.containsValue(80)); // true
  print(marks.containsValue(100)); // false

  // ============================================================
  // 7. keys
  // Returns all keys
  // ============================================================
  print("\n7. Keys");

  print(marks.keys);

  // ============================================================
  // 8. values
  // Returns all values
  // ============================================================
  print("\n8. Values");

  print(marks.values);

  // ============================================================
  // 9. entries
  // Returns every key-value pair
  // ============================================================
  print("\n9. Entries");

  print(marks.entries);

  // ============================================================
  // 10. length
  // Number of entries in the map
  // ============================================================
  print("\n10. Length");

  print(marks.length);

  // ============================================================
  // 11. isEmpty
  // Returns true if map has no elements
  // ============================================================
  print("\n11. isEmpty");

  print(marks.isEmpty);

  // ============================================================
  // 12. isNotEmpty
  // Returns true if map contains elements
  // ============================================================
  print("\n12. isNotEmpty");

  print(marks.isNotEmpty);

  // ============================================================
  // 13. putIfAbsent()
  // Adds a key only if it does not already exist
  // ============================================================
  print("\n13. putIfAbsent()");

  marks.putIfAbsent("Rohan", () => 70);

  // Won't overwrite because "Ashish" already exists.
  marks.putIfAbsent("Ashish", () => 100);

  print(marks);

  // ============================================================
  // 14. addAll()
  // Adds multiple entries at once
  // ============================================================
  print("\n14. addAll()");

  marks.addAll({"Neha": 88, "Karan": 91});

  print(marks);

  // ============================================================
  // 15. update()
  // Updates an existing key
  // ============================================================
  print("\n15. update()");

  marks.update("Ashish", (value) => value + 5);

  print(marks);

  // ============================================================
  // 16. update() with ifAbsent
  // If key doesn't exist, create it
  // ============================================================
  print("\n16. update() with ifAbsent");

  marks.update("Vikas", (value) => value + 5, ifAbsent: () => 75);

  print(marks);

  // ============================================================
  // 17. removeWhere()
  // Removes entries based on a condition
  // ============================================================
  print("\n17. removeWhere()");

  // Remove students with marks less than 85.
  marks.removeWhere((key, value) => value < 85);

  print(marks);

  // ============================================================
  // 18. forEach()
  // Iterate through every key-value pair
  // ============================================================
  print("\n18. forEach()");

  marks.forEach((key, value) {
    print("$key -> $value");
  });

  // ============================================================
  // 19. Loop using entries
  // ============================================================
  print("\n19. Loop using entries");

  for (var entry in marks.entries) {
    print("Key = ${entry.key}, Value = ${entry.value}");
  }

  // ============================================================
  // 20. Loop through keys
  // ============================================================
  print("\n20. Loop through keys");

  for (var key in marks.keys) {
    print(key);
  }

  // ============================================================
  // 21. Loop through values
  // ============================================================
  print("\n21. Loop through values");

  for (var value in marks.values) {
    print(value);
  }

  // ============================================================
  // 22. Copying a Map
  // ============================================================
  print("\n22. Copy Map");

  Map<String, int> copy = Map.from(marks);

  print(copy);

  // ============================================================
  // 23. Clear the Map
  // Removes every entry
  // ============================================================
  print("\n23. clear()");

  copy.clear();

  print(copy);

  // ============================================================
  // 24. Dynamic Map
  // Different value types can be stored
  // ============================================================
  print("\n24. Dynamic Map");

  Map<String, dynamic> person = {
    "Name": "Ashish",
    "Age": 22,
    "Height": 5.9,
    "Student": true,
  };

  print(person);

  // ============================================================
  // 25. Empty Map
  // ============================================================
  print("\n25. Empty Map");

  Map<String, int> scores = {};

  scores["Math"] = 95;
  scores["Science"] = 91;

  print(scores);

  // ============================================================
  // 26. Nested Map
  // A map can contain another map
  // ============================================================
  print("\n26. Nested Map");

  Map<String, Map<String, int>> students = {
    "Ashish": {"Math": 90, "Science": 95},
    "Rahul": {"Math": 80, "Science": 85},
  };

  print(students);

  print(students["Ashish"]?["Science"]); // 95

  // ============================================================
  // END OF MAP DEMO
  // ============================================================
}
