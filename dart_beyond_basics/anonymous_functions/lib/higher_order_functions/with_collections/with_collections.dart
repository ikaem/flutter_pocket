void withForEach() {
  final List<int> someNumnbers = [1, 2, 3, 4, 5];

// discouragned using funciton literals with for each loops
  someNumnbers.forEach((element) => print(element));
  // for in is better - to make it more readable

// TODO this is fine - varable passed to for each is more readable
  Function(int) printANumber = (int number) => print(number);
  someNumnbers.forEach(printANumber);
}

void withIteratingOverMap() {
  final Map<String, String> map = {
    "name": "karlo",
    "surname": "mine",
  };

  // note that for each of a map acdepts key and value
  map.forEach((key, value) {
    print("$key is $value");
  });
}

void withReducingAColleciton() {
  final List<int> someNumnbers = [1, 2, 3, 4, 5];

// reduce will throw errro if no elementrs inside, because starting value of acc is the first value in the colleciton
  final int total = someNumnbers
      .reduce((accumulator, currentValue) => accumulator + currentValue);

  print(total);
}

void wittFoldingACollection() {
  final List<int> someNumbers = [];

  final int total =
      someNumbers.fold(0, (previousValue, element) => previousValue + element);

  print(total);
}

void withSortingACollection() {
  final List<String> characters = ["b", "c", "a", "č"];

  characters.sort();

  print(characters); // [a, b, c, č]
}

void withSortingAnIntCollection() {
  final List<int> integers = [5, 3, 1, 7, 9, 4, 11, 6, 5];

  integers.sort();

  print(integers); // [1, 3, 4, 5, 5, 6, 7, 9, 11]
}

void withSortingWithCallback() {
  final List<String> characters = ["b", "c", "a", "č"];

  // THIS WILL SORT BACKWARDS

  characters.sort((a, b) {
    final int comparison = a.compareTo(b);

    if (comparison > 0) return -1;
    if (comparison < 0) return 1;

    return 0;
  });

  print(characters); // [a, b, c, č]// [1, 3, 4, 5, 5, 6, 7, 9, 11]
}
