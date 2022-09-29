import 'package:flutter/material.dart';
import 'pages/list_page.dart';
import 'pages/save_page.dart';

//inicia la app
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return   MaterialApp(
      initialRoute: ListPage.ROUTE,
      routes: {
        ListPage.ROUTE : (_) => ListPage(),
        SavePage.ROUTE : (_) => SavePage(),


      },
    );
  }
}


