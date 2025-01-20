import 'package:flutter/material.dart';
class textformfild extends StatelessWidget {
  String lbl;
  String hint;
  Icon preIcon;
  Icon? suffIcon;
  int type;
  textformfild(
      {required this.lbl,
        required this.hint,
        required this.preIcon,
        this.suffIcon ,
        required this.type

      });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (v){
        switch(type){
          case 1:
            if(!v!.contains('@') ||!v!.contains('.com')){
              return "it must be like : Exam@domain.com";
            }
            return null;
            break;
          case 2:
            if(v!.length <8){
              return "pleas Enter 8 char";
            }
            return null;
            break;
        }
      },
      decoration: InputDecoration(
        label:Text(lbl),
        hintText: hint,
        prefixIcon: preIcon,
        suffixIcon: suffIcon,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
            width: 3
          )
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.blueGrey,
                width: 3
            )
        ),
      ),

    );
  }
}
