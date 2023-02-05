class Person {
  Person(this.firstName, this.lastName);

  final String firstName;
  final String lastName;

  String get name => "$firstName $lastName";

  @override
  String toString() => name;
}

class Professor extends Person {
  Professor(
    String firstName,
    String lastName,
    String subject,
    int age,
  )   : subject = subject,
        age = age,
        super(firstName, lastName);

  final String subject;
  final int age;
}

class Student extends Person {
  Student(super.firstName, super.lastName);

  final List<Grade> grades = [];

  @override
  String toString() => "${super.toString()} - grades: $grades";
}

class SeniorStudent extends Student {
  SeniorStudent(
    super.firstName,
    super.lastName,
    this.year,
  );

  final int year;

  @override
  String toString() => "${super.toString()} - year: $year";
}

class JuniorStudent extends Student {
  JuniorStudent(
    super.firstName,
    super.lastName,
    this.year,
  );

  final int year;

  @override
  String toString() => "${super.toString()} - year: $year";
}

enum Grade {
  a,
  b,
  c,
  d,
  e,
  f,
}
