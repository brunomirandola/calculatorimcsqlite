import 'package:path/path.dart';

import 'package:sqflite/sqflite.dart';

class DB {
  DB._();

  static final DB instance = DB._();

  static Database? _database;

  get database async {
    if (_database != null) return _database;

    return await _initDatabase();
  }

  _initDatabase() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'imc.db'),
      version: 1,
      onCreate: _onCreate,
    );
  }

  _onCreate(db, version) async {
    await db.execute(_altura);
    await db.execute(_imc);
  }

  String get _imc => '''
    CREATE TABLE imc(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      peso REAL,
      classificacao TEXT,
      altura_id INTEGER NOT NULL,
      FOREIGN KEY (altura_id)
        REFERENCES altura (id)
    );
  ''';

  String get _altura => '''
    CREATE TABLE altura(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      altura REAL
    );
''';
}
