import 'dart:math';

import 'package:sandbox/src/features/overlays/domain/entities/todo/entity.dart';

class TodosDataSource {
  List<TodoEntity> getTodos() {
    return _todos;
  }

  void deleteTodo(int id) {
    _todos.removeWhere((element) => element.id == 1);
  }
}

final List<TodoEntity> _todos = [
  TodoEntity(
    id: 1,
    title: "Todo 1",
    createdDate: _getRandomDate().millisecondsSinceEpoch,
  ),
  TodoEntity(
    id: 2,
    title: "Todo 2",
    createdDate: _getRandomDate().millisecondsSinceEpoch,
  ),
  TodoEntity(
    id: 3,
    title: "Todo 3",
    createdDate: _getRandomDate().millisecondsSinceEpoch,
  ),
  TodoEntity(
    id: 4,
    title: "Todo 4",
    createdDate: _getRandomDate().millisecondsSinceEpoch,
  ),
  TodoEntity(
    id: 5,
    title: "Todo 5",
    createdDate: _getRandomDate().millisecondsSinceEpoch,
  ),
  TodoEntity(
    id: 6,
    title: "Todo 6",
    createdDate: _getRandomDate().millisecondsSinceEpoch,
  ),
  TodoEntity(
    id: 7,
    title: "Todo 7",
    createdDate: _getRandomDate().millisecondsSinceEpoch,
  ),
];

DateTime _getRandomDate() {
  final Random random = Random();

  final DateTime startDateTime = DateTime(2020, 1, 1);
  final DateTime endDateTime = DateTime.now();

// this returns duration in days - note that this is int
  final int range = endDateTime.difference(startDateTime).inDays;

  // now we get some random integer
  final int randomDays = random.nextInt(range);

  // now we add this random days to start date to get some date

  final DateTime randomDate = startDateTime.add(Duration(days: randomDays));

  return randomDate;
}
