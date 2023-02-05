extension StringExtension on String {
  String onEncode() {
    final StringBuffer buffer = StringBuffer();

    for (final int charCode in runes) {
      final String char = String.fromCharCode(charCode + 1);
      buffer.write(char);
    }

    return buffer.toString();
  }
}

String codeStringNaively(String value) {
  final StringBuffer buffer = StringBuffer();

  for (final int code in value.runes) {
    final String character = String.fromCharCode(code + 1);
    buffer.write(character);

    // we could have used writeCharCode on buffer directly
    // buffer.writeCharCode(code + 1);
  }

  return buffer.toString();
}

extension PersonExtension on Person {
  String get initials => "${firstName[0]}.${lastName[0]}.";
}

// this is namelessa extension
extension on Person {
  String getFullName() => "$firstName $lastName";
}

class Person {
  final String firstName;
  final String lastName;

  Person(this.firstName, this.lastName);
}
