import 'package:flutter/material.dart';

class StoryBox extends StatelessWidget {
  Icon? im;
  double? w;
  double? h;
  Color? c;
  StoryBox({this.im,required this.w,required this.h,required this.c});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: w,
        width: h,
        decoration: BoxDecoration(
            color: c,
            shape: BoxShape.circle
        ),
        child: im,

      ),
    );
  }
}