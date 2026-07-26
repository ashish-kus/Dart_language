void main() {
  //==============================================================
  // DART NULL SAFETY (?) COMPLETE DEMO
  //==============================================================

  //==============================================================
  // 1. Nullable Variable
  //
  // int? means the variable can store either an int or null.
  //==============================================================

  print("1. Nullable Variable");

  int? age = null;

  print(age);

  age = 22;

  print(age);

  //==============================================================
  // 2. Non-nullable Variable
  //
  // Cannot store null.
  //==============================================================

  print("\n2. Non-nullable Variable");

  int number = 100;

  print(number);

  // number = null; // Compile-time Error

  //==============================================================
  // 3. Null-aware Access (?.)
  //
  // Calls a method/property only if the object isn't null.
  //==============================================================

  print("\n3. Null-aware Access (?.)");

  String? name = null;

  print(name?.length); // null

  name = "Ashish";

  print(name?.length); // 6

  //==============================================================
  // 4. Null Coalescing Operator (??)
  //
  // Returns the left value if it's not null.
  // Otherwise returns the right value.
  //==============================================================

  print("\n4. Null Coalescing (??)");

  String? city = null;

  print(city ?? "Delhi");

  city = "Mumbai";

  print(city ?? "Delhi");

  //==============================================================
  // 5. Null-aware Assignment (??=)
  //
  // Assigns only if the variable is currently null.
  //==============================================================

  print("\n5. Null-aware Assignment (??=)");

  String? language;

  language ??= "Dart";

  print(language);

  language ??= "Flutter";

  print(language);

  //==============================================================
  // 6. Null Assertion (!)
  //
  // Tells Dart:
  // "I guarantee this value isn't null."
  //
  // Be careful! It crashes if the value is actually null.
  //==============================================================

  print("\n6. Null Assertion (!)");

  String? framework = "Flutter";

  print(framework!.length);

  // String? test = null;
  // print(test!.length); // Runtime Error

  //==============================================================
  // 7. Nullable Collection Element (?value)
  //
  // Adds the value only if it isn't null.
  //==============================================================

  print("\n7. Null-aware Collection Element");

  int? score = null;

  var list1 = [10, ?score, 30];

  print(list1);

  score = 20;

  var list2 = [10, ?score, 30];

  print(list2);

  //==============================================================
  // 8. Null-aware Spread (...?)
  //
  // Adds all elements only if the collection isn't null.
  //==============================================================

  print("\n8. Null-aware Spread");

  List<int>? numbers = null;

  var result1 = [1, ...?numbers, 5];

  print(result1);

  numbers = [2, 3, 4];

  var result2 = [1, ...?numbers, 5];

  print(result2);

  //==============================================================
  // 9. Optional Map Access
  //==============================================================

  print("\n9. Nullable Map");

  Map<String, String>? student = null;

  print(student?["Name"]);

  student = {"Name": "Ashish"};

  print(student?["Name"]);

  //==============================================================
  // 10. Optional List Access
  //==============================================================

  print("\n10. Nullable List");

  List<int>? marks = null;

  print(marks?.length);

  marks = [90, 95, 100];

  print(marks?.length);

  //==============================================================
  // 11. Combining ?? and ?.
  //==============================================================

  print("\n11. Combine ?. and ??");

  String? username = null;

  print(username?.toUpperCase() ?? "Guest");

  username = "ashish";

  print(username?.toUpperCase() ?? "Guest");

  //==============================================================
  // 12. Ternary vs ??
  //==============================================================

  print("\n12. ?? vs Ternary");

  String? company = null;

  print(company ?? "OpenAI");

  print(company == null ? "OpenAI" : company);

  //==============================================================
  // END
  //==============================================================
}
