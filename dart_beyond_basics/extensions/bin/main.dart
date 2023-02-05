import 'package:extensions/src/base/base.dart';

Future<void> main() async {
// with extensions
  final String encoded = "abc".onEncode();
  print(encoded); // bcd

  // final String codedValue = codeStringNaively("abc");
  // print(codedValue); // bcd
}
