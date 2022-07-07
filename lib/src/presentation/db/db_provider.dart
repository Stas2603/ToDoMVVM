import 'package:sqflite/sqflite.dart';
import 'package:to_do/src/data/entity/task.dart';

class DBProvider {
  Database? db;

  Future open(String path) async {
    db = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute('''
create table $tableTask ( 
  $columnId integer primary key autoincrement, 
  $columnTitle text not null,
  $columnDone integer not null)
''');
    });
  }

  Future<Task> insert(Task task) async {
    task.id = await db!.insert(tableTask, task.toMap());
    return task;
  }

  Future<Task?> getTodo(int id) async {
    List<Map> maps = await db!.query(tableTask,
        columns: [columnId, columnDone, columnTitle],
        where: '$columnId = ?',
        whereArgs: [id]);
    if (maps.isNotEmpty) {
      return Task.fromMap(maps.first);
    }
    return null;
  }

  Future<int> delete(int id) async {
    return await db!.delete(tableTask, where: '$columnId = ?', whereArgs: [id]);
  }

  Future<int> update(Task task) async {
    return await db!.update(tableTask, task.toMap(),
        where: '$columnId = ?', whereArgs: [task.id]);
  }

  Future close() async => db!.close();
}
