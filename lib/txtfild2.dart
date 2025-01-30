import 'package:flutter/material.dart';
class FormFil extends StatefulWidget {

  @override
  State<FormFil> createState() => _FormFilState();
}

class _FormFilState extends State<FormFil> {
 final fkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("login"),
        centerTitle: true,
      ),
      body: Form(
          key: fkey,
          child: Column(
        children: [SizedBox(height: 20,),
          TextFormField(

            decoration: InputDecoration(

              hintText: "bvcxz",
              label: Text("fds"),
              prefixIcon: Icon(Icons.add),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: Colors.blue,
                  width: 2
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                      color: Colors.blueGrey,
                      width: 3
                  )
              ),

            ),

          ),
          SizedBox(height: 20,),
          TextFormField(

            decoration: InputDecoration(

              hintText: "bvcxz",
              label: Text("fds"),
              prefixIcon: Icon(Icons.add),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                    color: Colors.blue,
                    width: 2
                ),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                      color: Colors.blueGrey,
                      width: 3
                  )
              ),

            ),

          ),

        ],
      )),
    );
  }
}
