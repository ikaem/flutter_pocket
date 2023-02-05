import 'package:inheritance/src/base/base.dart';

Future<void> main() async {
  final Student karlo = JuniorStudent("Karlo", "Marinovic", 1);
  final Student ivan = SeniorStudent("Ivan", "Marinovic", 4);
  final Student martina = SeniorStudent("Martina", "Marinovic", 5);

  final List<Student> students = [
    karlo,
    ivan,
    martina,
  ];

  print(karlo is Student); // true
  print(karlo is JuniorStudent); // true
  print(karlo is SeniorStudent); // false

  print(karlo.runtimeType == Student); // false
  print(karlo.runtimeType == JuniorStudent); // true

  // final Student student = Student("firstName", "lastName");

  // student.grades.add(Grade.a);

  // print(student); // firstName lastName - grades: [Grade.a]
}
