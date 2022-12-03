import 'package:chek_me/src/model/check_model.dart';
import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart';

class Database {
  static sql.Database? _database;

  Future<sql.Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('check.db');
    return _database!;
  }

  Future<sql.Database> _initDB(String filePath) async {
    final dbPath = await sql.getDatabasesPath();
    final path = join(dbPath, filePath);

    return await sql.openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(sql.Database db, int version) async {
    await db.execute("""CREATE TABLE checks(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        data TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
        title TEXT,
        description TEXT,
        total INTEGER,
      )
      """);
  }
}
