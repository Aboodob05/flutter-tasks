// import 'package:flutter/material.dart';
// import 'PostBox.dart';
// import 'StoryBox.dart';
//
// class Lviewb extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 5,
//                 itemBuilder: (context,i){
//                   return StoryBox(im:Image.asset("assets/storyImag/imag$i.jpg") ,);
//                 }),
//           ),
//           Expanded(
//             flex:5 ,
//             child: ListView.builder(
//               itemCount: 5,
//                 itemBuilder: (context,i){
//               return PostBox(pim: Image.asset("assets/postImag/imag$i.jpg"));
//             }),
//           )
//
//         ],
//
//       ),
//
//     );
//   }
// }