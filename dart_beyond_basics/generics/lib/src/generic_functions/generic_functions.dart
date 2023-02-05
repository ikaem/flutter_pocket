// stupid recursion
// optional because of recursion
Node<E>? createTree<E>(List<E> nodeValues, [int index = 0]) {
// this is control
// - if we reach point, where our index is larger than amount of values, just return null
  if (index >= nodeValues.length) return null;

  final Node<E> currentIterationNode = Node(nodeValues[index]);
// get children nodes
/* 
why 2*? because index will grow exponentially because each parent could have two children

 */
  final int leftChildIndex = 2 * index + 1;
  final int rightChildIndex = 2 * index + 2;

  // now we get left and right nodes with stuff that we get for index
  currentIterationNode.leftChild = createTree(nodeValues, leftChildIndex);
  currentIterationNode.rightChild = createTree(nodeValues, rightChildIndex);

// ok, we handled current node
  return currentIterationNode;
}

class Node<T> {
  Node(this.value);

  T value;

  Node<T>? leftChild;
  Node<T>? rightChild;
}
