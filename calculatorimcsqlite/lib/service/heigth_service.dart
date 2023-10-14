import 'package:calculatorimcsqlite/db/db.dart';
import 'package:sqflite/sqflite.dart';

class AlturaService {
  late Database db;

  Future<void> add(double altura) async {
    db = await DB.instance.database;

    await db.rawInsert("INSERT INTO altura (altura) VALUES (?)", [altura]);
  }

  Future<double> getOne() async {
    db = await DB.instance.database;
    final response =
        await db.rawQuery("SELECT altura FROM altura WHERE id = 1");

    double altura = 1.0;

    for (var element in response) {
      altura = double.parse(element['altura'].toString());
    }

    return altura;
  }
}
