import 'dart:convert';

void divideByZero() {
  // this should crash the app
  final result = 1 ~/ 0;

  print(result);

  /* 
  Unhandled exception:
IntegerDivisionByZeroException
#0      int.~/ (dart:core-patch/integers.dart:30:7)
#1      divideByZero (package:error_handling/src/base/base.dart:3:20)
#2      main (file:///C:/Development/flutter/pocket/dart_beyond_basics/error_handling/bin/main.dart:4:3)
#3      _delayEntrypointInvocation.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:297:19)
#4      _RawReceivePortImpl._handleMessage (dart:isolate-patch/isolate_patch.dart:192:12)
  
  */
}

// void noSuchMethod() {
//   final dynamic nullValue = null;
//   final int? value = null;

//   print(3.isEven); // false
//   print(value.isEven); // combile tile errro NoSuchMethodError
//   print(nullValue.isEven); // throw runtime error NoSuchMethodError
// }

void formatException() {
  // we are trying to decode a non-json string
  final String someString = "abc";
  jsonDecode(someString);
  /* 
  
Unhandled exception:
FormatException: Unexpected character (at character 1)
abc
   */
}
