enum Fruit with Describer {
  cherry,
  apple,
  banana,
}

mixin Describer on Enum {
  void describe() {
    print("This $runtimeType is a $name");
  }
}
