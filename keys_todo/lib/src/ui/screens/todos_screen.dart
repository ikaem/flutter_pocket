import 'package:flutter/material.dart';
import 'package:keys_todo/src/features/todos/data/repository/todos_repository.dart';
import 'package:keys_todo/src/features/todos/models/todo_model.dart';
import 'package:keys_todo/src/features/todos/ui/controller/todos_controller.dart';
import 'package:keys_todo/src/features/todos/ui/widgets/todo_add.dart';
import 'package:keys_todo/src/features/todos/ui/widgets/todo_list.dart';
import 'package:keys_todo/src/styles/app_colors.dart';
import 'package:keys_todo/src/ui/widgets/layout/progress_widget.dart';

class TodosScreen extends StatefulWidget {
  const TodosScreen({
    super.key,
    required this.todosRepository,
  });

  final TodosRepository todosRepository;

  @override
  State<TodosScreen> createState() => _TodosScreenState();
}

class _TodosScreenState extends State<TodosScreen> {
  late List<TodoModel> todos;
  bool isTodosLoading = true;
  ValueNotifier<bool> isAddingTodo = ValueNotifier(false);

// this is my custom controlelr
  late final TodosController _todosController;

  @override
  void initState() {
    super.initState();
    _todosController = TodosController(widget.todosRepository);

    loadTodos();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWillPop,
      child: Scaffold(
        floatingActionButton: buildFloatingActionButton(),
        bottomSheet: ValueListenableBuilder(
          valueListenable: isAddingTodo,
          child: BottomSheet(
            backgroundColor: Colors.white,
            onClosing: () {},
            builder: (context) => TodoAdd(onSubmitTap: createTodo),
          ),
          builder: (context, value, child) {
            if (!value) return const SizedBox.shrink();
            if (child == null) return const SizedBox.shrink();

            // now, the child exists, and we are in adding mode
            return child;
          },
        ),
        body: isTodosLoading
            ? const ProgressWidget()
            : TodoList(
                todos: todos,
                todosRepository: widget.todosRepository,
                onReorder: reorderTodos,
              ),
      ),
    );
  }

  Future<void> loadTodos() async {
    final loadedTodos = await _todosController.handleFetchTodos();
    if (!mounted) return;
    if (loadedTodos == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Error while fetching the todos"),
        ),
      );
      return;
    }

    setState(() {
      todos = loadedTodos;
      isTodosLoading = false;
    });
  }

  Future<void> createTodo(TodoModel todo) async {
    final isTodoCreated = await _todosController.handleAddTodo(todo);

// dont want to set any sstate if the widget is no longer mounted, regardles of whether the thing is created
    if (!mounted) return;

    if (!isTodoCreated) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Error while adding new Todo"),
        ),
      );

      return;
    }

    setState(() {
      todos.add(todo);
      toggleIsAddingTodo();
    });
  }

  void toggleIsAddingTodo() {
    // note that this is not actually setting state to render ui again
    isAddingTodo.value = !isAddingTodo.value;
  }

  void reorderTodos(int oldIndex, int newIndex) {
    if (oldIndex < newIndex) {
      // why this
      // lets say we want to move item up
      // it might be we will put one place before the user actually dropped it
      newIndex = newIndex - 1;
    }

    final item = todos.removeAt(oldIndex);
    setState(() {
      todos.insert(newIndex, item);
    });
  }

  Future<bool> onWillPop() {
    if (isAddingTodo.value) {
      // this actually switches is adding again
      toggleIsAddingTodo();
      return Future.value(false);
    }

    return Future.value(true);
  }

  FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: toggleIsAddingTodo,
      backgroundColor: AppColors.accentColor,
      child: ValueListenableBuilder(
        valueListenable: isAddingTodo,
        builder: (context, value, child) {
          return Icon(
            value ? Icons.close : Icons.add,
            color: Colors.white,
          );
        },
      ),
    );
  }
}
