import 'package:flutter/material.dart';
import 'package:keys_todo/src/features/todos/data/repository/todos_repository.dart';
import 'package:keys_todo/src/features/todos/models/todo_model.dart';
import 'package:keys_todo/src/features/todos/ui/controller/todos_controller.dart';
import 'package:keys_todo/src/styles/app_colors.dart';
import 'package:keys_todo/src/utils/datetime_utils.dart';

class TodoItem extends StatefulWidget {
  const TodoItem({
    super.key,
    required this.todo,
    required this.todosRepository,
  });

  final TodoModel todo;
  final TodosRepository todosRepository;

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  late bool isDone;
  bool isDeleted = false;

  TodoModel get todo => widget.todo;

  // controller here
  late final TodosController _todosController;

  @override
  void initState() {
    _todosController = TodosController(widget.todosRepository);
    // ok, so initially, we want to grab  state of todo, and update local flag
    // so we initially set this to knwo whate we are working with?

    isDone = todo.isDone;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

// this is interesting - setting opacity based on item priority
    final itemColor = colorScheme.primary.withOpacity(0.05 * todo.priority);
    final priorityIconColor = colorScheme.secondary;

    if (isDeleted) return const SizedBox.shrink();

    return Column(
      children: [
// there is just one child here
        ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          tileColor: itemColor,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          title: Text(
            todo.text,
            style: textTheme.subtitle1!.copyWith(
              decoration: isDone ? TextDecoration.lineThrough : null,
            ),
          ),
          subtitle: Text(
            DateTimeUtils.formatDate(todo.dueDate),
            style: textTheme.bodyText2!.copyWith(
              color: AppColors.accentColor,
              height: 2,
              decoration: isDone ? TextDecoration.lineThrough : null,
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              IconButton(
                onPressed: handleTodoAction,
                icon: Icon(isDone ? Icons.close_sharp : Icons.check_sharp),
              ),
              Icon(
                Icons.arrow_upward_rounded,
                size: 25,
                color: priorityIconColor,
              ),
              const SizedBox(
                width: 8,
              ),
              const Icon(
                Icons.menu,
                size: 25,
              )
            ],
          ),
        )
      ],
    );
  }

  Future<void> completeTodo() async {
    final isUpdated = await _todosController.handleCompleteTodo(todo);
    if (!mounted) return;

    if (!isUpdated) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Error while completing the todod")));

      return;
    }

    setState(() {
      // this is not reactive way of doing it
      isDone = true;
    });
  }

  Future<void> deleteTodo() async {
    final isTodoDeleted = await _todosController.handleDeleteTodo(todo);

    if (!mounted) return;

    if (!isTodoDeleted) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Error while deleting the todod")));

      return;
    }

    setState(() {
      // this is not reactive way of doing it
      isDeleted = true;
    });
  }

  Future<void> handleTodoAction() async {
    if (!isDone) {
      completeTodo();
      return;
    }

    deleteTodo();
  }
}
