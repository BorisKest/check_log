import 'package:sqflite/sqflite.dart' as sql;

class Database {
  static Future<void> createTables(sql.Database database) async {
    await database.execute("""CREATE TABLE checks(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        data TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
        title TEXT,
        description TEXT,
        total INTEGER,
      )
      """);
  }

  Database db;

  Future open(String path) async {
    db = await sql.openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute('''
create table $tableTodo ( 
  $columnId integer primary key autoincrement, 
  $columnTitle text not null,
  $columnDone integer not null)
''');
    });
  }
}
