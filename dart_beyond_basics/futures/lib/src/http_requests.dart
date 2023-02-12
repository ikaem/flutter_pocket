import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';

Future<void> handleGetTodo() async {
  const String url = 'https://jsonplaceholder.typicode.com/todos/1';

// note that we can parse uril form a simple string with this
  try {
    final Uri parsedUrl = Uri.parse(url);

    final Response response = await get(parsedUrl);
    final int statusCode = response.statusCode;

    if (statusCode != HttpStatus.ok) {
      throw HttpException('$statusCode');
    }

    final String jsonString = response.body;

    final dynamic jsonMap = jsonDecode(jsonString);

    final Todo todo = Todo.fromJson(jsonMap);

    print(todo);
  } on SocketException catch (e) {
    print('socket exception: $e');
  } on HttpException catch (e) {
    print('http excetpion: $e');
  } on FormatException catch (e) {
    print('format exception: $e');
  } catch (e) {
    print('some other excetpion');
  }
}

class Todo {
  const Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  factory Todo.fromJson(dynamic jsonMap) {
    final Map<String, dynamic> map = jsonMap as Map<String, dynamic>;

    final int userId = map['userId'] as int;
    final int id = map['userId'] as int;
    final String title = map['title'] as String;
    final bool completed = map['completed'] as bool;

    return Todo(
      userId: userId,
      id: id,
      title: title,
      completed: completed,
    );
  }

  final int userId;
  final int id;
  final String title;
  final bool completed;

  @override
  String toString() {
    return '''
      userId: $userId,
      id: $id,
      title: $title,
      completed: $completed,
    ''';
  }
}
