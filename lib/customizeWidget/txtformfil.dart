import 'package:flutter/material.dart';
class textformfild extends StatefulWidget {
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
  State<textformfild> createState() => _textformfildState();
}

class _textformfildState extends State<textformfild> {
  bool b = true;

  String? s ;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: (widget.type == 2 || widget.type == 3) ? b ?true : false: false ,
      onChanged:(v){
      },
      validator: (v){
        switch(widget.type){
          case 1:
            if(!v!.contains('@') ||!v.contains('.com')){
              return "it must be like : Exam@domain.com";
            }
            return null;
            break;
          case 2:
            if(v!.length <8){
              return "pleas Enter 8 char";
            }


            return null;

          case 3:
            if(v != s){
              return "password is not the same that you wrote";
            }
            return null;
        }
      },

      decoration: InputDecoration(
        // fillColor: Colors.blueAccent,
        // filled: true,
        label:Text(widget.lbl),
        hintText: widget.hint,
        prefixIcon: widget.preIcon,
        suffixIcon:
        (widget.type == 2 || widget.type == 3)?InkWell(
            child: b?Icon(Icons.closed_caption_disabled_outlined):Icon(Icons.remove_red_eye_outlined),
        onTap: (){
             setState(() {
               b=!b;
             });
        },):null,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
            width: 3
          ),
          borderRadius: BorderRadius.circular(20)


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
