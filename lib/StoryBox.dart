import 'package:flutter/material.dart';

class StoryBox extends StatelessWidget {
  Image? im;
  StoryBox({required this.im});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: im!.image,
              fit: BoxFit.cover),
            color: Colors.redAccent,
            shape: BoxShape.circle
        ),

      ),
    );
  }
}