import 'package:flutter/foundation.dart';

@immutable
class NewsModel {
  final int id;
  final String by;
  final int time;
  final List<dynamic> kids;
  final String url;
  final int score;
  final String title;

// note that we dont have that normal constructor here
  NewsModel.fromJson(Map<String, dynamic> parsedJson)
      :
// how do we knwo this is an int
        id = parsedJson["id"],
        by = parsedJson["by"] ?? "",
        time = parsedJson["time"],
        kids = parsedJson["kids"] ?? [],
        url = parsedJson["url"] ?? "",
        score = parsedJson["score"],
        title = parsedJson["title"];

  // @override
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    if (other is! NewsModel) return false;
    if (runtimeType != other.runtimeType) return false;
    if (id != other.id) return false;

    return true;
  }

  @override
  int get hashCode => id.hashCode;
}
