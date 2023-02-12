import 'dart:developer';

void validateSomeStrings() {
  final String tooShort = "123asd";
  final String noNumbers = "asd";
  final String noText = "123";

  try {
    throw PasswordTooShortException(tooShort);
  } catch (e) {
    log("$e");
  }

  try {
    throw PasswordWithoutNumbersException(noNumbers);
  } catch (e) {
    log("$e");
  }

  try {
    throw PasswordWithoutTextException(noText);
  } catch (e) {
    log("$e");
  }

  try {
    throw "anything";
  } catch (e) {
    log(e.toString());
  }
}

class PasswordTooShortException implements Exception {
  PasswordTooShortException(this.message);

  final String message;
}

class PasswordWithoutNumbersException implements Exception {
  PasswordWithoutNumbersException(this.message);
  final String message;
}

class PasswordWithoutTextException implements Exception {
  PasswordWithoutTextException(this.message);
  final String message;
}
