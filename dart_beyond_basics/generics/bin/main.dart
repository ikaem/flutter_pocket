import 'package:generics/src/generics_of_specified_subtype/generics_of_specified_subtype.dart';

Future<void> main(List<String> args) async {
  final BinarySearchTree<num> tree = BinarySearchTree<num>();

  tree.insert(3); // this goids to root
  tree.insert(
      1); // this checks if 1 is less thatn root node - it is, so it places it left - because left child does not exist yet, so it creates this thing

  // final IntNode intNodeTree = createIntTree();
}
