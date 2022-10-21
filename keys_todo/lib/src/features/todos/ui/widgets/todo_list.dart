import 'package:flutter/material.dart';
import 'package:keys_todo/src/features/todos/data/repository/todos_repository.dart';
import 'package:keys_todo/src/features/todos/models/todo_model.dart';
import 'package:keys_todo/src/features/todos/ui/widgets/todo_item.dart';

typedef OnReorder = void Function(int, int);

class TodoList extends StatelessWidget {
  const TodoList({
    super.key,
    required this.todos,
    required this.todosRepository,
    // added for reordering purposes
    required this.onReorder,
  });

  final List<TodoModel> todos;
  final TodosRepository todosRepository;
  final OnReorder onReorder;

  @override
  Widget build(BuildContext context) {
    // return ListView(
    //   padding: const EdgeInsets.only(bottom: 90.0),
    //   children: todos.map((e) {
    //     return TodoItem(todo: e, todosRepository: todosRepository);
    //   }).toList(),
    // );

    // this is reorderable
    return ReorderableListView(
      padding: const EdgeInsets.only(bottom: 90.0),
      onReorder: onReorder,
      children: todos.map((e) {
        return TodoItem(
          key: ObjectKey(e),
          todo: e,
          todosRepository: todosRepository,
        );
      }).toList(),
    );
  }
}
