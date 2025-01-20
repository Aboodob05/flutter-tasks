import 'package:flutter/material.dart';
import 'customizeWidget/txtformfil.dart';

class loginform extends StatefulWidget {

  @override
  State createState() => _loginformState();
}

class _loginformState extends State<loginform> {
  @override
  final Key = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Form(
          key:Key ,
          child: Column(
        children: [SizedBox(height: 50),

          textformfild(lbl: "Email", hint: "Exam@gmail.com", preIcon: Icon(Icons.email),type: 1,),
          SizedBox(height: 20),

          textformfild(lbl: "Password", hint: "*******", preIcon: Icon(Icons.password),type: 2,),
          SizedBox(height: 50),

          ElevatedButton(onPressed: (){
            if(Key.currentState!.validate()){
              print("No error");
            }
            else{print("no eror");}
          }, child: Text("Login"))
        ],
      ))
    );
  }
}
