import 'dart:convert';

void handleInvalidJson() {
  final String json = "";

  try {
    final int divideByZeroResult = 1 ~/ 0;
    final dynamic someData = jsonDecode(json);
    print("some data: $someData");
  } on UnsupportedError catch (e, s) {
    print("this was a unsupported exception error: $e");
    print("this was the unsupported exception stack trace: $s");
  } on FormatException catch (e, s) {
    print("this was a format exception error: $e");
    print("this was the format exception stack trace: $s");
  } catch (e, s) {
    print("this was an error: $e");
    print("this was stack trace: $s");
  } finally {
    print("we reached finally!!");
  }

  print("the app continues!!");
}
