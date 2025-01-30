import 'package:flutter/material.dart';
import 'customizeWidget/txtformfil.dart';

class loginform extends StatefulWidget {
  @override
  State createState() => _loginformState();
}

class _loginformState extends State<loginform> {
  @override
final key = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login", style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Container(
                width: 100,
                height: 100,
          
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(100),
                ),
                  child: Icon(Icons.person,size: 100,color: Colors.white,)),
              SizedBox(height: 50,),
              Form(
                key : key,
               child: Column(
                children: [
                  textformfild(lbl: "Email", hint: "Exam@domain.com", preIcon: Icon(Icons.email), type: 1),
                  SizedBox(height: 20,),
                  textformfild(lbl: "PassWord", hint: "******", preIcon: Icon(Icons.lock), type: 2),
                  SizedBox(height: 20,),
                  textformfild(lbl: "password again", hint: "*******", preIcon: Icon(Icons.lock), type: 2),
                  SizedBox(height: 25,),
                  ElevatedButton(onPressed: (){
                    if(key.currentState!.validate()){
                      print("object");
                    }
          
                  }, child: Text("login"))
                  
                ],
              ))
            ],
          ),
        ),
      )

    );
  }
}