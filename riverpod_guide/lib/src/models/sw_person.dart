class SwPerson {
  final String name;
  final String birthYear;

  SwPerson.fromJson(Map<String, dynamic> json)
      : name = json["name"] ?? "",
        birthYear = json["birth_year"] ?? "";
}
