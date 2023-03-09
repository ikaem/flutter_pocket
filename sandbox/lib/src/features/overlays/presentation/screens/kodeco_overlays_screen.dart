import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sandbox/src/features/overlays/data/data_sources/todos/data_source.dart';
import 'package:sandbox/src/features/overlays/domain/entities/todo/entity.dart';
import 'package:sandbox/src/features/overlays/presentation/screens/kodeco_overlays_add_note.dart';
import 'package:sandbox/src/features/overlays/presentation/widgets/kodeco_overlays_note_details.dart';
import 'package:sandbox/src/features/overlays/utils/mixins/overlay_state_mixin.dart';
import 'package:sandbox/src/features/overlays/utils/services/router_service/models/custom_popup_route.dart';

enum SortType {
  oldestFirst,
  newestFirst,
}

final TodosDataSource todosDataSource = TodosDataSource();

class KodecoOverlaysScreen extends StatefulWidget {
  const KodecoOverlaysScreen({super.key});

  @override
  State<KodecoOverlaysScreen> createState() => _KodecoOverlaysScreenState();
}

class _KodecoOverlaysScreenState extends State<KodecoOverlaysScreen> {
  List<TodoEntity> todos = [];

  @override
  void initState() {
    super.initState();

    setState(() {
      todos = todosDataSource.getTodos();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: _onNewTodoTap, icon: const Icon(Icons.add)),
          SortingPopupMenuButton(
            onSortNewest: _sortNewestFirst,
            onSortOldest: _sortOldestFirst,
          )
        ],
      ),
      body: todos.isEmpty
          ? const Center(child: Text("No todos"))
          : ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                final TodoEntity item = todos[index];
                return TodoItem(
                  todo: item,
                  onDeleteTodo: (int todoId) {
                    todosDataSource.deleteTodo(todoId);
                    setState(() {
                      todos = todosDataSource.getTodos();
                    });
                  },
                );

                // return ListTile(
                //   title: Text(item.title),
                //   subtitle: Text(
                //       "Created: ${DateTime.fromMillisecondsSinceEpoch(item.createdDate).toLocal()}"),
                //   trailing: IconButton(
                //     onPressed: () {
                //       showDialog(
                //         context: context,
                //         builder: (context) {
                //           return _buildDeleteConfirmationDialog(item.id);
                //         },
                //       );
                //     },
                //     icon: const Icon(Icons.delete),
                //   ),
                // );
              },
            ),
    );
  }

  void _sortOldestFirst() {
    log("Soring oldest first...");

    return;
  }

  void _sortNewestFirst() {
    log("Soring newest first...");

    return;
  }

  void _onNewTodoTap() {
    Navigator.of(context).push(CustomPopupRoute(
      builder: (context) => const KodecoOverlaysAdd(),
    ));
  }
}

class TodoItem extends StatefulWidget {
  const TodoItem({
    super.key,
    required this.todo,
    required this.onDeleteTodo,
  });

  final TodoEntity todo;
  final void Function(int todoId) onDeleteTodo;

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> with OverlayStateMixin<TodoItem> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (!isOverlayShown) return true;

        removeOverlay();
        return false;
      },
      child: ListTile(
        onTap: () => toggleOverlay(
          KodecoOverlaysNoteDetails(
            onDetailsClose: removeOverlay,
          ),
        ),
        title: Text(widget.todo.title),
        subtitle: Text(
            "Created: ${DateTime.fromMillisecondsSinceEpoch(widget.todo.createdDate).toLocal()}"),
        trailing: IconButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return _buildDeleteConfirmationDialog();
              },
            );
          },
          icon: const Icon(Icons.delete),
        ),
      ),
    );
  }

  Widget _buildDeleteConfirmationDialog() {
    final NavigatorState navigator = Navigator.of(context);

    final Widget cancelOption = IconButton(
      onPressed: () {
        navigator.pop();
      },
      icon: const Icon(Icons.close),
    );

    final Widget confirmOption = IconButton(
      onPressed: () {
        // todosDataSource.deleteTodo(todoId);
        // setState(() {
        //   todos = todosDataSource.getTodos();
        // });
        widget.onDeleteTodo(widget.todo.id);

        navigator.pop();
      },
      icon: const Icon(Icons.delete),
    );

    return AlertDialog(
      title: const Text("Delete todo"),
      content: const Text("Are you sure you want to delete this todo"),
      actions: [
        cancelOption,
        confirmOption,
      ],
    );
  }
}

class SortingPopupMenuButton extends StatelessWidget {
  const SortingPopupMenuButton({
    super.key,
    required this.onSortNewest,
    required this.onSortOldest,
  });

  final VoidCallback onSortNewest;
  final VoidCallback onSortOldest;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<SortType>(
      icon: const Icon(
        Icons.sort,
      ),
      onSelected: (SortType sortType) {
        switch (sortType) {
          case SortType.oldestFirst:
            onSortOldest();
            break;
          case SortType.newestFirst:
            onSortNewest();
            break;
        }
      },
      itemBuilder: (context) {
        return [
          const PopupMenuItem(
            value: SortType.newestFirst,
            child: Text('Newest first'),
          ),
          const PopupMenuItem(
            value: SortType.oldestFirst,
            child: Text('Oldest first'),
          ),
        ];
      },
    );
  }
}
