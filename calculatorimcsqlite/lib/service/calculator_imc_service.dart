import 'package:calculatorimcsqlite/utils/methods.dart';
import 'package:sqflite/sqflite.dart';

import '../../db/db.dart';

class CalculatorImcService {
  late Database db;

  Future<void> add(double peso, String classificacao) async {
    db = await DB.instance.database;

    db.rawInsert(
        "INSERT INTO imc (peso, classificacao, altura_id) VALUES (?,?,?)",
        [peso, classificacao, 1]);
  }

  Future<List<Map<String, dynamic>>> getAll() async {
    db = await DB.instance.database;

    final response =
        await db.rawQuery('''SELECT i.id, i.peso, i.classificacao, a.altura 
          FROM imc AS i 
          INNER JOIN altura AS a 
          ON i.altura_id = a.id
        ''');

    final list = <Map<String, dynamic>>[];

    for (var element in response) {
      list.add({
        'id': convertStringToInt(element['id'].toString()),
        'peso': convertStringToDouble(element['peso'].toString()),
        'classificacao': element['classificacao'].toString(),
        'altura': convertStringToDouble(element['altura'].toString()),
      });
    }

    return list;
  }

  Future<void> delete(int id) async {
    db = await DB.instance.database;

    await db.rawDelete("DELETE FROM imc WHERE id = ?", [id]);
  }
}
