import 'package:keys_todo/src/features/todos/data/repository/todos_repository.dart';
import 'package:keys_todo/src/features/todos/models/todo_model.dart';

class TodosController {
  TodosController(this.repository);

  final TodosRepository repository;

  Future<List<TodoModel>?> handleFetchTodos() async {
    try {
      final fetchedTodos = await repository.fetchTodos();

      return fetchedTodos;
    } on Exception {
      return null;
    }
  }

  Future<bool> handleAddTodo(TodoModel todo) async {
    // final scaffoldMessager = ScaffoldMessenger.of(context);

    try {
      final isTodoAdded = await repository.addTodo(todo);
      return isTodoAdded;
    } on Exception {
      // scaffoldMessager.showSnackBar(
      //   const SnackBar(
      //     content: Text("Error while adding new Todo"),
      //   ),
      // );
      return false;
    }
  }

  Future<bool> handleCompleteTodo(TodoModel todo) async {
    // final scaffoldMessager = ScaffoldMessenger.of(context);

    try {
      final isUpdated = await repository.editTodo(todo.copyWith(isDone: true));
      return isUpdated;
    } on Exception {
      // scaffoldMessager.showSnackBar(
      //     const SnackBar(content: Text("Error while completing the todod")));
      return false;
    }
  }

  Future<bool> handleDeleteTodo(TodoModel todo) async {
    // final scaffoldMessager = ScaffoldMessenger.of(context);

    try {
      final isDeleted = await repository.deleteTodo(todo);
      return isDeleted;
    } on Exception {
      // scaffoldMessager.showSnackBar(
      //     const SnackBar(content: Text("Error while deleting the todod")));
      return false;
    }
  }
}
