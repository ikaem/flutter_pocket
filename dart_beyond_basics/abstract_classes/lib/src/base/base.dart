class Platypus extends Animal {
  @override
  void eat() {
    // TODO: implement eat
  }

  @override
  void move() {
    // TODO: implement move
  }
}

abstract class Animal {
  bool isAlive = true;
  void eat();
  void move();

  @override
  String toString() => "I am a $runtimeType";
}
