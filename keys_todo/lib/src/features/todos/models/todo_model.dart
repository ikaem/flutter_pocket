import 'package:flutter/foundation.dart';

@immutable
class TodoModel {
  const TodoModel({
    this.text = "",
    required this.dueDate,
    this.priority = 3,
    this.isDone = false,
  });

  final String text;
  final DateTime dueDate;
  final int priority;
  final bool isDone;

// this is using a shrothand
  TodoModel.fromJson(Map<String, dynamic> json)
      :
        // note that we have to parse this as date time
        dueDate = DateTime.parse(json["dueDate"]),
        text = json["text"],
        priority = int.parse(json["priority"]),
        isDone = json["isDone"].toLowerCase() == true.toString().toLowerCase();

// all of these actually need to be converted to string
  Map<String, dynamic> toJson() {
    final json = {
      "text": text,
      "dueDate": dueDate.toIso8601String(),
      "priority": priority.toString(),
      "isDone": isDone.toString(),
    };

    return json;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    if (other is! TodoModel) return false;
    if (runtimeType != other.runtimeType) return false;
    if (text != other.text) return false;
    if (!dueDate.isAtSameMomentAs(other.dueDate)) return false;
    if (priority != other.priority) return false;

    return true;
  }

  @override
  int get hashCode {
    // so this will actually return hash code of a map?
    // hash code is an int
    final int combinedValues =
        (text + dueDate.toIso8601String() + priority.toString()).hashCode;

    return combinedValues;
  }

  TodoModel copyWith({
    String? text,
    DateTime? dueDate,
    int? priority,
    bool? isDone,
  }) {
    return TodoModel(
      dueDate: dueDate ?? this.dueDate,
      text: text ?? this.text,
      priority: priority ?? this.priority,
      isDone: isDone ?? this.isDone,
    );
  }
}
