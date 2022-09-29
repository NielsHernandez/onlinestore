//import necesary packages
import 'package:flutter/material.dart';

//create stalleswidget

class SavePage extends StatelessWidget {
  static const String ROUTE = "/save";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agregar Producto"),
      ),
      body: Container(
          child: _FormSave(),
      ),
    );
  }
}

class _FormSave extends StatelessWidget{
  //para poder aceder a los campos se necesita identificarlos por medio de un key
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(5),
        child: Form(
          key: _formKey,
      child:
      Column(children: <Widget>[
        TextFormField(
          //validate fields
          validator: (String? value){
            if(value != null && value.isEmpty){
              return "Nombre de producto requerido";
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: "producto:",
            border: OutlineInputBorder()
          ),
        ),
        //para agregar padding
        SizedBox(height: 10,),
        TextFormField(
          //varias lineas
          maxLines: 2,
          //validate fields
            validator: (String? value){
              if(value != null && value.isEmpty){
                return "precio es requerido";
              }
              return null;
            },
          decoration: InputDecoration(
              labelText: "precio:",
              border: OutlineInputBorder()
          ),
        ),
        ElevatedButton(onPressed: (){
          //Your formKey is an instance variable and thus it cannot be detected by flow analysis that it is definitely not null even after your if check.
          if(_formKey.currentState!.validate()){
            print("oprimiste el buton");
          }

        }, child: Text("Guardar"),)

      ],),),)
    ;
  }
}