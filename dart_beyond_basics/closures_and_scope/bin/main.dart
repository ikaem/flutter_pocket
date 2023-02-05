import 'package:closures_and_scope/src/base/base.dart';

Future<void> main() async {
  final int Function() theCountingClosure =
      functionThatReturnsCountingClosure();

  final int firstCall = theCountingClosure();
  final int secondCall = theCountingClosure();
  final int thirdCall = theCountingClosure();

  print(firstCall); // 1
  print(secondCall); // 2
  print(thirdCall); // 3
}
