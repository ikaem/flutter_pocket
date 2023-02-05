IntNode createIntTree() {
  final IntNode zero = IntNode(0);
  final IntNode one = IntNode(1);
  final IntNode five = IntNode(5);
  final IntNode seven = IntNode(7);
  final IntNode eight = IntNode(8);
  final IntNode nine = IntNode(9);

  seven.leftChild = one;
  one.leftChild = zero;
  one.rightChild = five;
  seven.rightChild = nine;
  nine.leftChild = eight;

  return seven;
}

class IntNode {
  IntNode(this.value);

  int value;

  IntNode? leftChild;
  IntNode? rightChild;
}
