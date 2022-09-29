import 'package:flutter/material.dart';
import 'package:onlinestore/pages/save_page.dart';
class ListPage extends StatelessWidget{
  //ListPage({super.key});
  static const String ROUTE = "/";
  @override
  Widget build(BuildContext context){

    return Scaffold(
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add),onPressed: (
      ){
        Navigator.pushNamed(context, SavePage.ROUTE);
      },),
      appBar: AppBar(title: Text("productos"),),
      body: Container(child: ListView(children: <Widget>[
        ListTile(title: Text("producto 1"),),
        ListTile(title: Text("producto 2"),),
        ListTile(title: Text("producto 3"),),
      ],),),
    );
  }



}