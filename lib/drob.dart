import 'package:drobbot/popupminu.dart';
import 'package:flutter/material.dart';
import 'bfs.dart';

String? initVal;
int? pLocat;
String? info;
List<List> input = [];

Color? barc = Colors.red[700];
Color? scufc = Colors.white;
Color? botc = Colors.white;
String? selecteditem;


class drob extends StatefulWidget{
  @override
  State createState() => dropBotton();
}
class dropBotton extends State<drob> {
  List<String> them = ["Original","Dark","Light"];
  List<String> bloodTyps =["A+","A-","B+","B-","O-","O+","AB+","AB-"];
  List<String> location =  ["","Bani Kinanah","Alramtha","irbid city","Alwasatea","Alshonah","Bani 3baid","Almazar","Altaibah","Alkorah"];
  //List<List> input = [];
  @override
  bool flag = false;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scufc,
      appBar: AppBar(
        backgroundColor:barc,
        actions: [
          PopupMenuButton(
           iconColor: flag ? Colors.white : Colors.black54,
            itemBuilder: (context){
            return them.map((i){
              return PopupMenuItem(child: Text(i),value: i);
    }).toList();
    },
            onSelected: (v){
            setState(() {
              selecteditem = v;
              if(selecteditem == "Dark"){
                barc = Colors.black54;
                scufc = Colors.grey;
                botc = Colors.white;
                flag = true;
              }
              else if(selecteditem == "Light"){
                barc = Colors.pinkAccent;
                scufc = Colors.pinkAccent;
                botc = Colors.white;
              }
              else{
                barc = Colors.red[700];
                scufc = Colors.white;
                botc = Colors.white;
              }

            });

            },
          )
            ],
          ),



      body:Center(

        child:
        Column(
          children: [
            SizedBox(height: 60,),

            SizedBox(width: 180,
              child:DropdownButtonFormField(
                dropdownColor: botc,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.bloodtype),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)
                      )
                  ),
                  value: initVal,


                  items: bloodTyps.map((i){
                    return DropdownMenuItem(child: Text(i), value: i,);
                  }).toList(),

                  onChanged:(v){

                    setState(() {
                      initVal = v;
                      input.clear();
                      info = null;
                    });
                  }
              ),
            ),

            SizedBox(height: 70,),

            SizedBox(width: 180,
              child:DropdownButtonFormField(
                  dropdownColor: botc,
                  decoration: InputDecoration(

                      suffixIcon: Icon(Icons.location_on),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)
                      )
                  ),
                  value: pLocat,

                  items: location.map((i){
                    return DropdownMenuItem(child: Text(i), value: location.indexOf(i));
                  }).toList()

                  ,
                  onChanged:(v){

                    setState(() {
                      pLocat = v as int;

                      bfs(pLocat);



                    });
                  }
              ),
            ),

            SizedBox(height: 70,),
            SizedBox(width: 280,
              child:DropdownButtonFormField(
                  dropdownColor: botc,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.person_search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)
                      )
                  ),


                  value: info,
                  items: input.map((i){
                    String s = i.join(", ");
                    return DropdownMenuItem(child: Text(s), value: s);

                  }).toList()

                  ,
                  onChanged:(v){

                    setState(() {
                      info = v;
                    });
                  }
              ),
            ),

          ],
        ),
      ),

    );
  }
}