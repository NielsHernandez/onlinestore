import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:onlinestore/models/producto.dart';

class Operation {
  static Future<Database> _openDB() async {
    return openDatabase(join(await getDatabasesPath(), 'producto.db'),
        onCreate: (db, version) {
      return db.execute(
          "CREATE TABLE producto(id INTEGER PRIMARY KEY, producto TEXT, precio DOUBLE)");
    }, version: 1);
  }

  //post insertar

  static Future<void> insert(Producto producto) async {
    //referencia a la db
    Database database = await _openDB();

     database.insert('producto', producto.toMap());
  }

  static Future<List<Producto>> productos() async {
    Database database = await _openDB();

    final List<Map<String, dynamic>> productosMap =
        await database.query("producto");

    for (var p in productosMap) {
      print("_" + p['producto']);
    }
    //devolver como lista de objetos Producto

    return List.generate(productosMap.length, (i) => Producto(
        id: productosMap[i]['id'],
        producto: productosMap[i]['producto'],
        precio: productosMap[i]['precio']
    ));
  }
}
