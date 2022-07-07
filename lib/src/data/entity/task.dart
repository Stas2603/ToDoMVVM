const String tableTask = 'task';
const String columnId = '_id';
const String columnTitle = 'title';
const String columnDone = 'done';

class Task {
  int id = 1;
  String title = '';
  bool done = true;

  Map<String, Object> toMap() {
    var map = <String, Object>{
      columnTitle: title,
      columnDone: done == true ? 1 : 0
    };
    map[columnId] = id;
    return map;
  }

  Task();

  Task.fromMap(Map<dynamic, dynamic> map) {
    id = (map[columnId] as int?)!;
    title = (map[columnTitle] as String?)!;
    done = map[columnDone] == 1;
  }
}
