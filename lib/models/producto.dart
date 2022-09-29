import 'package:flutter/cupertino.dart';

class Producto{

   final int id;
   final String producto;
   final double precio;

  Producto({required this.id,required this.producto,required this.precio});

  //para castiar nuestro objeto a map y poder utilizarlo con sqflite

 Map<String, dynamic> toMap(){

   return ({'id': id, 'producto': producto, 'precio': precio});
}
}