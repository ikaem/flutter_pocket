Node<int> createIntTree() {
  final Node<int> zero = Node(0);
  final Node<int> one = Node(1);
  final Node<int> five = Node(5);
  final Node<int> seven = Node(7);
  final Node<int> eight = Node(8);
  final Node<int> nine = Node(9);

  seven.leftChild = one;
  one.leftChild = zero;
  one.rightChild = five;
  seven.rightChild = nine;
  nine.leftChild = eight;

  return seven;
}

class Node<T> {
  Node(this.value);

  T value;

  Node<T>? leftChild;
  Node<T>? rightChild;
}
