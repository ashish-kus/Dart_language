void main() {
  // Creating Lists
  List<int> numbers = [10, 20, 30, 40, 50];
  print("Original List: $numbers");

  // 1. add()
  numbers.add(60);
  print("\nadd(60): $numbers");

  // 2. addAll()
  numbers.addAll([70, 80]);
  print("addAll([70, 80]): $numbers");

  // 3. insert()
  numbers.insert(0, 5);
  print("insert(0, 5): $numbers");

  // 4. insertAll()
  numbers.insertAll(2, [11, 12]);
  print("insertAll(2, [11, 12]): $numbers");

  // 5. remove()
  numbers.remove(30);
  print("remove(30): $numbers");

  // 6. removeAt()
  numbers.removeAt(0);
  print("removeAt(0): $numbers");

  // 7. removeLast()
  numbers.removeLast();
  print("removeLast(): $numbers");

  // 8. removeRange()
  numbers.removeRange(1, 3);
  print("removeRange(1, 3): $numbers");

  // 9. contains()
  print("\ncontains(40): ${numbers.contains(40)}");

  // 10. indexOf()
  print("indexOf(40): ${numbers.indexOf(40)}");

  // 11. lastIndexOf()
  List<int> dup = [1, 2, 3, 2, 5];
  print("lastIndexOf(2): ${dup.lastIndexOf(2)}");

  // 12. first
  print("first: ${numbers.first}");

  // 13. last
  print("last: ${numbers.last}");

  // 14. length
  print("length: ${numbers.length}");

  // 15. isEmpty
  print("isEmpty: ${numbers.isEmpty}");

  // 16. isNotEmpty
  print("isNotEmpty: ${numbers.isNotEmpty}");

  // 17. reversed
  print("reversed: ${numbers.reversed.toList()}");

  // 18. sort()
  List<int> arr = [5, 1, 4, 2, 3];
  arr.sort();
  print("\nsort(): $arr");

  // 19. shuffle()
  arr.shuffle();
  print("shuffle(): $arr");

  // 20. clear()
  List<int> temp = [1, 2, 3];
  temp.clear();
  print("clear(): $temp");

  // 21. sublist()
  print("\nsublist(1, 3): ${numbers.sublist(1, 3)}");

  // 22. getRange()
  print("getRange(0, 2): ${numbers.getRange(0, 2).toList()}");

  // 23. replaceRange()
  List<int> list = [1, 2, 3, 4, 5];
  list.replaceRange(1, 3, [100, 200]);
  print("replaceRange(): $list");

  // 24. fillRange()
  list.fillRange(0, 2, 9);
  print("fillRange(): $list");

  // 25. map()
  var doubled = numbers.map((e) => e * 2).toList();
  print("\nmap(): $doubled");

  // 26. where()
  var even = numbers.where((e) => e.isEven).toList();
  print("where(): $even");

  // 27. forEach()
  print("forEach():");
  numbers.forEach((e) => print(e));

  // 28. any()
  print("\nany > 50: ${numbers.any((e) => e > 50)}");

  // 29. every()
  print("every > 0: ${numbers.every((e) => e > 0)}");

  // 30. reduce()
  print("reduce(sum): ${numbers.reduce((a, b) => a + b)}");

  // 31. fold()
  print("fold(sum): ${numbers.fold(0, (a, b) => a + b)}");

  // 32. take()
  print("take(3): ${numbers.take(3).toList()}");

  // 33. skip()
  print("skip(2): ${numbers.skip(2).toList()}");

  // 34. asMap()
  print("\nasMap():");
  numbers.asMap().forEach((index, value) {
    print("$index -> $value");
  });

  // 35. join()
  print("\njoin('-'): ${numbers.join('-')}");

  // 36. toSet()
  print("toSet(): ${dup.toSet()}");

  // 37. from()
  List<int> copied = List.from(numbers);
  print("List.from(): $copied");

  // 38. generate()
  List<int> generated = List.generate(5, (index) => index * 10);
  print("List.generate(): $generated");

  // 39. filled()
  List<String> filled = List.filled(4, "Flutter");
  print("List.filled(): $filled");

  // 40. firstWhere()
  print(
    "firstWhere > 30: ${numbers.firstWhere((e) => e > 30, orElse: () => -1)}",
  );

  // 41. lastWhere()
  print(
    "lastWhere even: ${numbers.lastWhere((e) => e.isEven, orElse: () => -1)}",
  );

  // 42. singleWhere()
  List<int> single = [1, 3, 5, 8];
  print(
    "singleWhere == 8: ${single.singleWhere((e) => e == 8, orElse: () => -1)}",
  );
}
