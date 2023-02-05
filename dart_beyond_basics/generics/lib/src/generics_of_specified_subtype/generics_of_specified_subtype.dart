class BinarySearchTree<E extends Comparable<E>> {
  Node<E>? rootNode;

  void insert(E value) {
    rootNode = _insertAt(rootNode, value);
  }

  Node<E> _insertAt(Node<E>? node, E value) {
    // if node does not xist, we will create it with the value
    if (node == null) {
      return Node(value);
    }

    // now we know node exists

    // check where to put the node
    if (value.compareTo(node.value) < 0) {
      node.leftChild = _insertAt(node.leftChild, value);
    } else {
      node.rightChild = _insertAt(node.rightChild, value);
    }

    return node;
  }
}

class Node<T> {
  Node(this.value);

  T value;

  Node<T>? leftChild;
  Node<T>? rightChild;
}
