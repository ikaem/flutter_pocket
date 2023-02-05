class Robin extends Animal with EggLayer, Flyer {
  @override
  void eat() {
    print("Eating...");
  }

  @override
  void move() {
    // note we are calling fly on the super
    super.fly();
  }

  // no need to define laying eggs because it is stil lthere in the mixin
}

mixin EggLayer {
  void layEggs() {
    print("Laying...");
  }
}

mixin Flyer {
  void fly() {
    print("Flying...");
  }
}

abstract class Animal {
  void eat();
  void move();
}
