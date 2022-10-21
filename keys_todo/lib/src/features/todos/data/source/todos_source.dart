import 'dart:convert';

import 'package:keys_todo/src/features/todos/models/todo_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TodosLocalDataSource {
  // this is used for storing keyed values into storage
  static const String _todosKey = "todos";

// add would rather this be called postOne
  Future<bool> addTodo(TodoModel todo) async {
    final prefs = await SharedPreferences.getInstance();
    final todos = await fetchTodos(preferences: prefs);
    final index = todos.indexWhere((element) => element == todo);

    if (index > -1) {
      throw Exception("The todo already exists");
    }

    todos.add(todo);

// we actually turn this into a list of strings, to be a ble to save in into storage
    final encodedTodos = _getEncodedTodos(todos);

    return prefs.setStringList(_todosKey, encodedTodos);
  }

// this to be called putOne
  Future<bool> editTodo(TodoModel todo) async {
    final prefs = await SharedPreferences.getInstance();

    // so we get todos
    final todos = await fetchTodos(preferences: prefs);

    // we check if it exists
    final index = todos.indexWhere((element) => element == todo);
    // if so , we delete it

// this remove at is pretty cool
    if (index > -1) todos.removeAt(index);
    // we add new new one
    todos.add(todo);

    // we save again

    final encodedTodos = _getEncodedTodos(todos);

    // we return response true or ggalse

    return prefs.setStringList(_todosKey, encodedTodos);
  }

// post many
  Future<bool> saveTodoList(List<TodoModel> todos) async {
    // this seems to be for multiple even
    final prefs = await SharedPreferences.getInstance();
    // get all todos
    final oldTodos = await fetchTodos(preferences: prefs);

    // add new ones
    oldTodos.addAll(todos);

    // convert all to encoded
    final encodedTodos = _getEncodedTodos(oldTodos);

    // save
    return prefs.setStringList(_todosKey, encodedTodos);
  }

// deleteOne
  Future<bool> deleteTodo(TodoModel todo) async {
    // again, same thing
    final prefs = await SharedPreferences.getInstance();
    final todos = await fetchTodos(preferences: prefs);

    if (todos.isEmpty) return false;

    todos.remove(todo);

    final encodedTodos = _getEncodedTodos(todos);
    return prefs.setStringList(_todosKey, encodedTodos);
  }

// getMany
  Future<List<TodoModel>> fetchTodos({SharedPreferences? preferences}) async {
    final prefs = preferences ?? await SharedPreferences.getInstance();
    // and now we actually get string list
    final todosStrings = prefs.getStringList(_todosKey) ?? [];

    final todos = _getTodoList(todosStrings);

    return todos;

    // and then we need to convert that list of strings to a list of todos
  }

// verify Store or something
  Future<bool> doesStoreExist() async {
    // this just basically checks if there is anthing in the store
    final prefs = await SharedPreferences.getInstance();

// but we dont get actuall todos here - we just want encoded stuff anyhow, to check if there is anything there
    final todos = prefs.getStringList(_todosKey);

    if (todos == null) return false;
    if (todos.isEmpty) return false;

    return true;
  }

  List<TodoModel> _getTodoList(List<String> todoStrings) {
// if empty return empty
    if (todoStrings.isEmpty) return [];

// decode will take the sring, and will turn it into map of string and dynamic
    final todos = todoStrings.map(jsonDecode).map((e) {
      return TodoModel.fromJson(e);
    }).toList();

    return todos;
  }

  List<String> _getEncodedTodos(List<TodoModel> todos) {
    // need to convert this to map first - and this is doen by calling that to json thing
    // and then needs to be encoded actually

    final jsonMaps = todos.map((e) => e.toJson()).toList();
    final encodedJsons = jsonMaps.map(jsonEncode).toList();

    return encodedJsons;
  }
}
