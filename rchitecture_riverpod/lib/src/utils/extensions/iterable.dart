extension FindInIterableExtension<T> on Iterable<T> {
  // ok, so it should return nullable here
  // this should accept a function that returns bool
  // if it returns bool, return that element
  T? firstWhereOrNull(bool Function(T) tester) {
    // now do use first where over iterable

// result is if element is not null and tester returns true
    // final T? result = firstWhere((element) => tester(element));

    // return result;

    try {
      final result = firstWhere((element) => tester(element));
      return result;
    } catch (e) {
      return null;
    }
  }
}
