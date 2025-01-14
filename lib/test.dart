import 'package:flutter/material.dart';
import 'package:drobbot/PostBox.dart';
import 'package:drobbot/StoryBox.dart';
class stk extends StatelessWidget {

List ls = ["1","2","3","4","5","6","7","8","9","","0",Icons.delete];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XCD7144b7),
        title: Text("SignUp",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Column(
            children: [

              Container(
                height: 719,
                decoration: BoxDecoration(
                  color: Color(0XCDe4dbf1),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70),
                  bottomRight:Radius.circular(70))
                ),
              ),


              Container(
                height: 150,
                decoration: BoxDecoration(
                    color: Color(0XCD7144b7),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
                        topRight:Radius.circular(30))
                ),
              ),
            ],
          ),



          Positioned(
            top: 330,
            right: MediaQuery.of(context).size.width/2 -150,

            child: Container(
              height: 400,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white,

              ),
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                  itemCount: 13, itemBuilder: (context,i){
                return PostBox( pim:ls[i]);
              }),
            ),
          ),


          Center(
            child: Column(
              children: [
                StoryBox(im: Icon(Icons.person,size: 40,),h:80,w:80,c:Colors.white),

                Text("SDK Center",style:TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),

                Row(
                  children: [
                    SizedBox(width: 135,),

                    StoryBox(w: 30, h: 30, c: Color(0XCD6c4dbd)),
                    StoryBox(w: 30, h: 30, c: Colors.white),
                    StoryBox(w: 30, h: 30, c: Colors.white),
                    StoryBox(w: 30, h: 30, c: Colors.white),


                  ],
                )
              ],

            ),
          )

        ],


      ),

    );
  }
}
