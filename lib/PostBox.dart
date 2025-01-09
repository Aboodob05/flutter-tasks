import 'package:flutter/material.dart';
class PostBox extends StatelessWidget {
  Image? pim;
  PostBox ({required this.pim});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(

        width: MediaQuery.of(context).size.width,
        height: 250,
        decoration: BoxDecoration(
            color: Colors.pink[100],
          image: DecorationImage(image: pim!.image,
            fit: BoxFit.cover)
          )
        ),

    );
  }
}