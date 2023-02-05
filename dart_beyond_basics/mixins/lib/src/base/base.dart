class Robin extends Bird {
  @override
  void fly() {
    print("Flying");
  }

  @override
  void layEggs() {
    print("Laying...");
  }
}

class Platypus extends Animal {
  @override
  void eat() {
    print("Eating...");
  }

  @override
  void move() {
    print("Moving...");
  }

  void layEggs() {
    print("Laying...");
  }
}

abstract class Bird {
  void layEggs();
  void fly();
}

abstract class Animal {
  void eat();
  void move();
}
