class SwPerson {
  SwPerson({
    required this.name,
    required this.birthYear,
  });

  final String name;
  final String birthYear;

  // real constructor is not really needed

  SwPerson.fromJson(Map<String, dynamic> json)
      : name = json["name"] ?? "",
        birthYear = json["birth_year"] ?? "";
}
