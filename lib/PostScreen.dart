import 'package:flutter/material.dart';

class PostSc extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: SizedBox(
          height: 250,
          child: Column(
            children: [
              Container(
                color: Colors.pinkAccent,
              )
            ],
          ),
               ),
       );


  }
}
