main() {
  final List<int> listA = [1, 2, 3, 4, 2, 2, 3, 5];
  // listA.add(10);
  // listA.addAll([1, 2]);
  // listA.remove(1);
  // listA.removeAt(1);
  // listA.removeRange(0,2);
  // listA.removeWhere((item) => item > 3);
  // listA.fillRange(1, 3, 10);
  // listA.insert(1, 10);
  // listA.insertAll(1, [1, 2, 3]);
  // listA.setAll(2, [5]);
  // print(listA.reversed.runtimeType);
  // listA.shuffle();
  // print(listA.take(100));
  // print(listA.takeWhile((value) => value < 3));
  // print(listA.where((element) => element % 2 == 0));
  // print(listA.join('-'));
  // print('1-b-c-3'.split('-').runtimeType);
  // print(listA.any((element) => element > 3));
  // print(listA.every((element) => element > 3));
  print(listA.toSet().toList());
  // print(listA.asMap());

  // final mapA = <double, String>{0.06: 'Mercury', 0.81: 'Venus', 0.11: 'Mars'};
  // print(mapA.values.runtimeType);
}
