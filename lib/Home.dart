import 'package:flutter/material.dart';
import 'package:olx_clone/EnterDetails.dart';
import 'package:olx_clone/account.dart';
import 'package:olx_clone/other/chat.dart';
import 'package:olx_clone/other/myads.dart';
import 'package:olx_clone/screen2.dart';

// import 'package:my_project/cart.dart';
// import 'package:my_project/category.dart';
// import 'package:my_project/explore.dart';
// import 'package:my_project/first.dart';
class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  // void navigation(int index) {
  //   setState(() {
  //     currentTab = index;
  //   });
  // }
  //
  // final List<Widget> pages = [
  //   Screen2(),
  //   Screen2(),
  //   Screen2(),
  //   Screen2(),
  // ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentscreen = Screen2();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: (Scaffold(
        body: PageStorage(bucket: bucket, child: currentscreen),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.white70,
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return EnterDetail();
                  // return EnterDetail(Detail: null,);
                },
              ),
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          // shape:CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 50,
                      onPressed: () => {
                        setState(() {
                          currentscreen = Screen2();
                          currentTab = 0;
                        })
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            color: currentTab == 0
                                ? Colors.green.shade900
                                : Colors.grey,
                          ),
                          Text(
                            'Home',
                            style: TextStyle(
                                color: currentTab == 0
                                    ? Colors.green.shade900
                                    : Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 50,
                      onPressed: () => {
                        setState(() {
                          currentscreen = Chat();
                          currentTab = 1;
                        })
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.chat_bubble_outline_rounded,
                            color: currentTab == 1
                                ? Colors.green.shade900
                                : Colors.grey,
                          ),
                          Text(
                            'Chats',
                            style: TextStyle(
                                color: currentTab == 1
                                    ? Colors.green.shade900
                                    : Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 50,
                      onPressed: () => {
                        setState(() {
                          currentscreen = Ads();
                          currentTab = 2;
                        })
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.save_sharp,
                            color: currentTab == 2
                                ? Colors.green.shade900
                                : Colors.grey,
                          ),
                          Text(
                            'Myads',
                            style: TextStyle(
                                color: currentTab == 2
                                    ? Colors.green.shade900
                                    : Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 50,
                      onPressed: () => {
                        setState(() {
                          currentscreen = Account();
                          currentTab = 3;
                        })
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.account_circle_outlined,
                            color: currentTab == 3
                                ? Colors.green.shade900
                                : Colors.grey,
                          ),
                          Text(
                            'Account',
                            style: TextStyle(
                                color: currentTab == 3
                                    ? Colors.green.shade900
                                    : Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}

//
// SafeArea(
// child: (
// Scaffold(
// body: pages[selectedIndex],
// floatingActionButton: FloatingActionButton(
// shape: CircleBorder(),
// backgroundColor: Colors.teal,
// autofocus: true,
// child: Icon(Icons.add),
// onPressed: () {},
// ),
// floatingActionButtonLocation:
// FloatingActionButtonLocation.miniCenterDocked,
//
// bottomNavigationBar: BottomNavigationBar(
// currentIndex: selectedIndex,
// type: BottomNavigationBarType.fixed,
// onTap: navigation,
// items: [
// BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
// BottomNavigationBarItem(
// icon: Icon(Icons.chat_bubble_outline_rounded), label: "chat"),
// BottomNavigationBarItem(
// icon:Icon(Icons.add_circle_rounded),label:"sell"),
// BottomNavigationBarItem(
// icon: Icon(Icons.save_sharp), label: "my ads"),
// BottomNavigationBarItem(
// icon: Icon(Icons.account_circle_outlined), label: "Account"),
// ],
// ),
// )),
// );
