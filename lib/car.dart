import 'package:flutter/material.dart';
import 'package:olx_clone/other/brand.dart';
import 'package:olx_clone/other/budget.dart';
import 'package:olx_clone/other/demo.dart';
import 'package:olx_clone/other/year.dart';

class Car extends StatefulWidget {
  const Car({super.key});
  @override
  State<Car> createState() => _CarState();
}

class _CarState extends State<Car> {
  int indexValue = 1;

  List<Widget> pages = [
    Brand(),
    Budget(),
    Year(),
  ];
  int currentTab = 0;
  @override
  Widget build(BuildContext context) {
    final PageStorageBucket b1 = PageStorageBucket();
    Widget currentscreen = Year();
    var arrimg = [
      'assets/image/brand.jpeg',
      'assets/image/budget.jpeg',
      'assets/image/year.jpeg'
    ];
    var ic = [Brand(), Budget(), Year()];
    return DefaultTabController(length: 3,

      child: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              // centerTitle: true,
              title: SizedBox(
                child: Container(
                  child: Image.asset(
                    "assets/image/hi.png",
                    height: 50,
                    width: 50,
                  ),
                ),
              ),
              actions: [
                Row(
                  children: [
                    Icon(Icons.location_on),
                    Center(
                      child: Text('Rajkot..'),
                    )
                  ],
                )
              ],
            ),
            body: SingleChildScrollView(
              child: Container(
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: TextField(
                              // controller: textinput,
                              decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            suffixIcon: Icon(Icons.add_alert),
                            label: Text("Find Cars,mobile Phones.."),
                            border: OutlineInputBorder(),
                          )),
                        ),
                        TabBar(
                            onTap: (value) {
                              indexValue = value;
                            },
                            tabs: [
                              Image.asset("assets/image/brand.jpeg"),
                              Image.asset("assets/image/budget.jpeg"),
                              Image.asset("assets/image/year.jpeg"),

                            ]),
                           Container(
                             height: 400,
                             child: TabBarView(children: pages),
                           ),

                      ],
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
