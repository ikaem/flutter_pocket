class MyClass extends OtherClass implements SomeOtherClass {
// note we dont have to implement checkIfAllbad because its class is extended - we get that class for free

// this has to be implemented, even if SomeOtherClass has this defined
  @override
  bool checkIfAllGood() {
    return true;
  }
}

abstract class OtherClass {
  bool checkIfAllBad() {
    return true;
  }
}

abstract class SomeOtherClass {
  bool checkIfAllGood() {
    return true;
  }
}
