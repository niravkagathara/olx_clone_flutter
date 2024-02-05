import 'package:flutter/material.dart';
import 'package:olx_clone/other/chat.dart';

class Demo extends StatefulWidget {
  // final String name;
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
              child: Container(
                child: Text('no data',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
            ),

            // ListView.separated(
            //   scrollDirection: Axis.horizontal,
            //   itemBuilder: (context, index) {
            //     return Container(
            //       child: Column(
            //         children: [
            //           Image.asset(data[index],fit: BoxFit.fill,),
            //           Text(name[index])
            //         ],
            //       ),
            //     );
            //   },
            //   itemCount: data.length,
            //   separatorBuilder: (BuildContext context, int index) {
            //     return Divider(
            //       height: 1,
            //     );
            //   },
            // ),

            // Center(
            //   child: Container(
            //     child: Text("No data found",
            //       style: TextStyle(
            //         fontSize: 30,
            //         color: Colors.grey,
            //         fontWeight: FontWeight.bold,
            //       ),),
            //   ),
            // ),
            ));
  }
}
