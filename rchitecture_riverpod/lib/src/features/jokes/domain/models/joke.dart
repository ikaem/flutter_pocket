class Joke {
  Joke({
    required this.id,
    required this.language,
    required this.type,
    required this.category,
    required this.joke,
    required this.setup,
    required this.delivery,
    this.likesCount = 0,
  });

  final int id;
  final String language;
  // TODO this could be an enum - for single, and twopart
  final String type;
  final String category;
  final String? joke;
  final String? setup;
  final String? delivery;
  int likesCount;

// we will have to provide a map here
  factory Joke.fromMap(Map<String, dynamic> map) {
    return Joke(
      id: int.parse(map["id"]),
      language: map["lang"] as String,
      // if this was enum, there is actually option on enum to go over values, and then return that specific value, so it stays an enum
      type: map["type"] as String,
      category: map["category"] as String,
      // i hope this fallsback to null, and not throws error
      joke: map["joke"],
      setup: map["setup"],
      delivery: map["delivery"],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "language": language,
      "type": type,
      "category": category,
      "joke": joke,
      "setup": setup,
      "delivery": delivery,
    };
  }

  Joke copyWith({
    String? language,
    String? type,
    String? category,
    String? joke,
    String? setup,
    String? delivery,
    int? likesCount,
  }) {
    return Joke(
      id: id,
      language: language ?? this.language,
      type: type ?? this.type,
      category: category ?? this.category,
      joke: joke ?? this.joke,
      setup: setup ?? this.setup,
      delivery: delivery ?? this.setup,
      likesCount: likesCount ?? this.likesCount,
    );
  }
}

// TODO  API HERE
// https://v2.jokeapi.dev/joke/Any?safe-mode
