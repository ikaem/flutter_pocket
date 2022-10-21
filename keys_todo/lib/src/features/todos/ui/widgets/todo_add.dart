import 'package:flutter/material.dart';
import 'package:keys_todo/src/features/todos/models/todo_model.dart';
import 'package:keys_todo/src/styles/app_colors.dart';
import 'package:keys_todo/src/utils/datetime_utils.dart';

typedef OnSubmitTap = Future<void> Function(TodoModel);
final _initialDueDate = DateTime.now();

class TodoAdd extends StatefulWidget {
  const TodoAdd({super.key, required this.onSubmitTap});

  final OnSubmitTap onSubmitTap;

  @override
  State<TodoAdd> createState() => _TodoAddState();
}

class _TodoAddState extends State<TodoAdd> {
  final formKey = GlobalKey<FormState>();

  final TextEditingController dueDateController =
      TextEditingController(text: DateTimeUtils.formatDate(_initialDueDate));

// this creates a todo
  TodoModel todo = TodoModel(dueDate: _initialDueDate);

  @override
  void dispose() {
    super.dispose();

    dueDateController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // this is due date fueld
            TextFormField(
              controller: dueDateController,
              decoration: const InputDecoration(labelText: "Todo"),
              onTap: () async {
                // ok, so it seems we wnat to unfocus what whe nwe tap on this
                // this will also pass focus to another element - by default, it is scope of unfocused disposition, whatever that is
                FocusScope.of(context).unfocus();

                // this actually opens the picker, and awaits return now
                final date = await selectDate();

                if (date == null) return;
                if (date == todo.dueDate) return;

                todo = todo.copyWith(dueDate: date);
                dueDateController.text = DateTimeUtils.formatDate(date);
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: "Todo"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter some text";
                }

                return null;
              },
              // onSaved will be called with FormState.save()
              onSaved: (value) {
                todo = todo.copyWith(text: value);
              },
            ),
            TextFormField(
              // we only want numbers here
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Priority (0-5"),
              validator: (value) {
                if (value == null || int.tryParse(value) == null) {
                  return "Please enter a number";
                }

                final intValue = int.parse(value);

                if (intValue > 5 || intValue < 0) {
                  return "Please enter a number from 0 to 5";
                }

                return null;
              },
              onSaved: (value) {
                todo = todo.copyWith(priority: int.parse(value!));
              },
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(AppColors.primary)),
              onPressed: handleSubmitNewTodo,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  "Submit",
                  style: textTheme.headline6!
                      .copyWith(color: Colors.white, fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

// TODO testing without passing context, since we are in stateful widget
  Future<DateTime?> selectDate() async {
    const hunderYears = Duration(days: 36500);

    return showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(hunderYears),
    );
  }

  Future<void> handleSubmitNewTodo() async {
    final bool isFormValid = formKey.currentState?.validate() ?? false;

    if (!isFormValid) return;

// this will actually trigger all onSave callbacks on fields
    formKey.currentState!.save();

    await widget.onSubmitTap(todo);
  }

  // not happy with this, but maybe it is a good practice
}
