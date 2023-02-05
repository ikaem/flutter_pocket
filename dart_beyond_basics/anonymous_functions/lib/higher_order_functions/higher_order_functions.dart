Function functionLiteral = () {
  return "Hello";
};

void functionThatAcceptsAnonymouseFunction(Function anonymousFunction) {
  anonymousFunction();
}

Function functionThatReturnsAnonymousFunction() {
  return () => print("Hello");
}
