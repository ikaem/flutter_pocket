void checkStringContents() {
  const String someText = "this is text";

  final bool doesStartWithT = someText.startsWith("t");
  final bool doesEndWithT = someText.endsWith("t");
  final bool doesContainIs = someText.endsWith("is");
}

void regexStringExpressionValidation() {
  final RegExp catRegExp = RegExp("cat");
  print(catRegExp.hasMatch("cats")); // true
  print(catRegExp.hasMatch("dogs")); // false

  // with .contains on the string - we pass it the regexpt
  print("cats".contains(catRegExp)); // true
}

void regexPatternAnySingleCharacterValidation() {
  final RegExp anySingleCharacter = RegExp("c.t");
  final RegExp anyOptionalSingleCharacter = RegExp("c.?t");

  print(anySingleCharacter.hasMatch("cmt")); // true
  print(anyOptionalSingleCharacter.hasMatch("ct")); // true
}

void regexPatternAnySingleCharacterMultipleValidation() {
  // note that the order matters here
  final RegExp anySingleCharacterOneOrMoreTimes = RegExp("c.+t");
  final RegExp anyOptionalSingleCharacterZeroOrMoreTimes = RegExp("c.*t");

// note here that because we have .+, we can have multiple instances of any character
  print(anySingleCharacterOneOrMoreTimes.hasMatch("c123123234t")); // true
  print(anySingleCharacterOneOrMoreTimes.hasMatch("cmmmt")); // true
  print(anyOptionalSingleCharacterZeroOrMoreTimes.hasMatch("ct")); // true
}

void regexPatternMatchSetsOfCharacters() {
  // here, we need words iwth b, either o r a, and t. no other options
  final RegExp setsOfCharactersRexExp = RegExp("b[oa]t");

  print(setsOfCharactersRexExp.hasMatch("bot")); // true
  print(setsOfCharactersRexExp.hasMatch("bat")); // true
  print(setsOfCharactersRexExp.hasMatch("but")); // false
  print(setsOfCharactersRexExp.hasMatch("boat")); // false
}

void regexPatternDONTMatchSetsOfCharacters() {
  // with this, we dont want a, o, or their combination - or notining in there
  final RegExp setsOfCharactersRexExp = RegExp("b[^oa]t");

  print(setsOfCharactersRexExp.hasMatch("bot")); // alse
  print(setsOfCharactersRexExp.hasMatch("bat")); // false
  print(setsOfCharactersRexExp.hasMatch("but")); // true
  print(setsOfCharactersRexExp.hasMatch("boat")); // false
  print(setsOfCharactersRexExp.hasMatch("bt")); // false
}

void regexPatterMatchRangeOfCharacters() {
  final RegExp setsOfCharactersRexExp = RegExp("[a-zA-Z]");

  print(setsOfCharactersRexExp.hasMatch("a")); // true
  print(setsOfCharactersRexExp.hasMatch("b")); // true
  print(setsOfCharactersRexExp.hasMatch("re")); // true
  print(setsOfCharactersRexExp.hasMatch("3z")); // true
  print(setsOfCharactersRexExp.hasMatch("3")); // false
}

void regexPatternEscapeSpecialCharacters() {
  // this meeans to escape characters used for regex expressions
  // also, r creates raw strings
  // we could prefix with \\
  final RegExp escapedBackslash = RegExp(r"c\.t");

  print(escapedBackslash.hasMatch("c.t")); // true
  print(escapedBackslash.hasMatch("cat")); // false
}

void regexPatterCheckNumbers() {
  // this check is for checking that it has numbers - nto only numbers
  final RegExp patternForNumbers = RegExp(r"[0-9]");

  print(patternForNumbers.hasMatch("123")); // true
  print(patternForNumbers.hasMatch("test123")); // true as well

  final RegExp patternForOnlyNumbers = RegExp(r'^[0-9]+$');

  print(patternForOnlyNumbers.hasMatch("123")); // true
  print(patternForOnlyNumbers.hasMatch("test123")); // false
}

void regexValidatePassword() {
  /* 
  check that passweord containts at least one 
  - lowercase 
  - uppercase 
  - number 
   */

  const String password = "123karloMarinović";

  // we separate the checks
  final RegExp lowercasePattern = RegExp(r"[a-z]");
  final RegExp uppercasePattern = RegExp(r"[A-Z]");
  final RegExp number = RegExp(r"[0-9]");
  final RegExp minLengthPattern = RegExp(r"{12,}");
}
