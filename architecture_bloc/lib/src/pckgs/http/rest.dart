import 'package:http/http.dart';

class Rest {
  static final Client client = Client();

  static Future<T?> get<T>() async {
    try {} catch (e) {
      // it would be cool to have some logger
    }
    return null;
  }
}
