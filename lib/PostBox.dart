import 'package:flutter/material.dart';

class PostBox extends StatelessWidget {
  dynamic pim;

  PostBox({required this.pim});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          width: 50,
          height: 50,
          color: Colors.white,
          child: Center(child: pim is IconData? Icon(pim,size:25) : Text(pim,style: TextStyle(fontSize: 25)),
          ),
        ),
      ),
    );
  }
}
