// TODO possibly use equatable here - but not sure why

class MatchForCreate {
  const MatchForCreate({
    required this.name,
  });

  final String name;

  // TODO not sure if freezed can do this
  Map<String, dynamic> toMap() {
    return {
      "name": name,
    };
  }
}
