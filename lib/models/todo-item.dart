import 'model.dart';

class TodoItem extends Model {
  static String table = 'todo_items';

  int? id;
  String task;
  bool complete;

  TodoItem({this.id, required this.task, this.complete = false});

  @override
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'task': task,
      'complete': complete ? 1 : 0, // SQLite не підтримує bool
    };
  }

  static TodoItem fromMap(Map<String, dynamic> map) {
    return TodoItem(
      id: map['id'],
      task: map['task'],
      complete: map['complete'] == 1,
    );
  }
}
