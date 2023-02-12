import 'package:futures/src/http_requests.dart';

Future<void> main() async {
  await handleGetTodo();

  print(
      'this is added to the event queue as well - because we used await above');
}
