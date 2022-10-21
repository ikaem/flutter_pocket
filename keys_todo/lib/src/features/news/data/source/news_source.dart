import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:keys_todo/src/features/news/models/news_mode.dart';

class NewsRemoteSource {
  static const _rootDomain = "hacker-news.firebaseio.com";

  // so this will return a list of integers
  Future<List<int>> fetchTopIds() async {
    // ok, so we have optional arguments here
    final Uri url = Uri.https(_rootDomain, "/v0/topstories.json");

    final response = await http.get(url);

// note that raw data here is actualy string
    final String stringData = response.body;
    // note that this we can actually modify - the type of the response
    final dynamic decodedStringData = json.decode(stringData);

    final ids = decodedStringData.cast<int>() ?? [];

    return ids;
  }

  Future<NewsModel> fetchItem(int id) async {
    final Uri url = Uri.https(_rootDomain, "/v0/item/$id.json");
    final response = await http.get(url);

    final jsonSource = response.body;

    // note that here we actualyl type this decode resutl
    final Map<String, dynamic> decodedData = json.decode(jsonSource);

// so here we dont actually parse the result in anyway
// so i guess date time will be handled by json?
    return NewsModel.fromJson(decodedData);
  }
}
