import 'package:flutter/material.dart';

class Chat extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // var arrColor = [Colors.yellow,
    //   Colors.grey,
    //   Colors.cyan,
    //   Colors.green,
    //   Colors.red,
    //   Colors.teal,
    // ];
    return SafeArea(child: Scaffold(
      body:Center(
        child: Container(
          child: Text("chat",
            style: TextStyle(
              fontSize: 30,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),),
        ),
      ),
      // appBar: AppBar(title: Text("data")),
      // body:GridView.builder( itemBuilder: (context, index){
      //   return Container(
      //       color: arrColor[index]  ,
      //   );
      // },itemCount: arrColor.length,
      //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent:200,crossAxisSpacing: 5,mainAxisSpacing: 3),
      // )
      // Column(
      //   children: [
      //     // Container(
          //   height: 200,
          //   child: GridView.count(
          //     crossAxisSpacing: 5,
          //     mainAxisSpacing: 5,
          //     crossAxisCount:3,
          //     children: [
          //       Container(
          //         color: arrColor[0],
          //       ),
          //       Container(
          //         color:arrColor[1],
          //       ),
          //       Container(
          //         color:arrColor[2],
          //       ),
          //       Container(
          //         color:arrColor[3],
          //       ),
          //       Container(
          //         color: arrColor[4],
          //       ),
          //       Container(
          //         color: arrColor[5],
          //       ),
          //       Container(
          //         color:arrColor[3],
          //       ),
          //       Container(
          //         color: arrColor[4],
          //       ),
          //       Container(
          //         color: arrColor[5],
          //       ),
          //     ],
          //   ),
          // ),
          // Container(
          //   height: 50,
          // ),
          //

        // ],
      ),
    // ),
    );
  }
}