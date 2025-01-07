import 'package:flutter/material.dart';

class Popupmenu extends StatefulWidget{
  @override
  State createState() => menu();
}
class menu extends State<Popupmenu>{
  List <String> col = ["Red","Blue"];
  String? selesteditem;
  Color? color  = Colors.yellow;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        title: Text("pop up menu"),
        actions: [
          PopupMenuButton(itemBuilder: (context){
             return col.map((i){
                return PopupMenuItem(child: Text(i) ,value: i,);
      }).toList();

    },
          onSelected: (v) {
            setState(() {
              selesteditem = v;
              if (selesteditem == "Red") {
                color = Colors.red;
              }
              else if (selesteditem == "Blue") {
                color = Colors.blue;
              }
            });
          })

        ],


      ),
    );
  }
}