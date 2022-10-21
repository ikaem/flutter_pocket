import 'package:keys_todo/src/features/todos/data/source/todos_source.dart';
import 'package:keys_todo/src/features/todos/data/static/initial_data.dart';
import 'package:keys_todo/src/features/todos/models/todo_model.dart';

class TodosRepository {
  const TodosRepository({required this.localDataSource});

  final TodosLocalDataSource localDataSource;

  Future<bool> addTodo(TodoModel todo) async {
    return localDataSource.addTodo(todo);
  }

  Future<bool> editTodo(TodoModel todo) async {
    return localDataSource.editTodo(todo);
  }

  Future<bool> deleteTodo(TodoModel todo) async {
    return localDataSource.deleteTodo(todo);
  }

  Future<List<TodoModel>> fetchTodos() async {
    // note there that we actually go ahead and initialize the thing
    //  i like this pattenr
    await _initialize();

    final todos = await localDataSource.fetchTodos();

    return todos;
  }

  Future<bool> _initialize() async {
    final doesStoreExist = await localDataSource.doesStoreExist();

    if (doesStoreExist) return false;
    // this will just check if store data exists - if not, it will put some data inside
    // if it exists - it returns false for some reason - but we dont use it for anyhting really

    final initialTodos = getInitialTodoList();

    return localDataSource.saveTodoList(initialTodos);
  }
}
