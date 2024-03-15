import 'package:flutter/material.dart';
import 'package:olx_clone/other/demo.dart';
import 'package:olx_clone/screen2.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var arrIc = [
      Icons.wallet_travel,
      Icons.settings,
      Icons.support_agent,
      Icons.language
    ];
    var name=[
      "Buy Packages & My Orders","Settings","Help & Support","Select Language / ભાષા પસંદ કરો"
    ];
    var n=[];
    var name2=[
      "Packages,orders,billing and invoices","Privacy and logout","Help Center and legal terms","English"

    ];
    var l=[Demo(),Demo(),Demo(),Demo()];
    return SafeArea(
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
        ),
        backgroundColor: Colors.white38,
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(20),
                  // alignment: Alignment(8,5),
                  // margin: EdgeInsets.all(80),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/image/nirav.png"),
                        radius: 60,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Welcome",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Nirav Kagathara",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.all(15),
                      color: Colors.green.shade900,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return Account();
                              },
                            ),
                          );
                        },
                        child: Center(
                          child: Text(
                            'View and Edit Your Profile',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                    height: 350,
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          return Container(
                            child: Container(
                                padding: EdgeInsets.all(15),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return l[index];
                                        },
                                      ),
                                    );
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        arrIc[index],
                                        color: Colors.grey,
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 1),
                                        child: Column(
                                          children: [
                                            Text(name[index]
                                              ,
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              name2[index]
                                              ,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w100),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Icon(Icons.arrow_forward_ios),
                                    ],
                                  ),
                                )),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Divider(
                            height: 1,
                          );
                        },
                        itemCount: arrIc.length)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//
//
// ListView(
// children: [
// Container(
// padding: EdgeInsets.all(15),
// child: InkWell(
// onTap: () {
// Navigator.of(context).push(
// MaterialPageRoute(
// builder: (context) {
// return Demo();
// },
// ),
// );
// },
// child:Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Icon(
// arrIc[0],
// color: Colors.grey,
// ),
// Padding(
// padding: EdgeInsets.fromLTRB(0,0,0,1),
// child: Column(
// children: [
// Text(
// "Buy Packages & My Orders",
// style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),
// ),
// Text("Packages,orders,billing and invoices",
// style: TextStyle(fontWeight: FontWeight.w100),),
// ],
// ),
// ),
// Icon(Icons.arrow_forward_ios),
// ],
// ) ,
// )
// ),
// Divider(
// height: 1,
// color: Colors.black,
// ),
// Container(
// padding: EdgeInsets.all(15),
// child: InkWell(
// onTap: () {
// Navigator.of(context).push(
// MaterialPageRoute(
// builder: (context) {
// return Demo();
// },
// ),
// );
// },
// child:Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Icon(
// Icons.settings,
// color: Colors.grey,
// ),
// Padding(padding: EdgeInsets.fromLTRB(0,0,0,1),
// child: Column(
// children: [
// Text(
// "Settings",
// style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),
// ),
// Text("Privacy and logout",
// style: TextStyle(fontWeight: FontWeight.w100),)
// ],
// ),
// ),
// Icon(Icons.arrow_forward_ios),
// ],
// ),
// )
//
//
// ),
// Divider(
// height: 1,
// color: Colors.black,
// ),
// Container(
// padding: EdgeInsets.all(15),
// child: InkWell(
// onTap: () {
// Navigator.of(context).push(
// MaterialPageRoute(
// builder: (context) {
// return Demo();
// },
// ),
// );
// },
// child:Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Icon(Icons.support_agent, color: Colors.grey),
// Padding(padding: EdgeInsets.fromLTRB(0,0,0,1),
// child: Column(
// children: [
// Text(
// "Help & Support",
// style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),
// ),
// Text("Help Center and legal terms",
// style: TextStyle(fontWeight: FontWeight.w100),)
// ],
// ),
// ),
// Icon(Icons.arrow_forward_ios),
// ],
// ),
// )
//
//
// ),
// Divider(
// height: 1,
// color: Colors.black,
// ),
// Container(
// padding: EdgeInsets.all(15),
// child: InkWell(
// onTap: () {
// Navigator.of(context).push(
// MaterialPageRoute(
// builder: (context) {
// return Demo();
// },
// ),
// );
// },
// child:Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Icon(Icons.language, color: Colors.grey),
//
// Padding(padding: EdgeInsets.fromLTRB(0,0,0,1),
// child: Column(
// children: [
// Text(
// "Select Language / ભાષા પસંદ કરો",
// style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),
// ),
// Text("English",
// style: TextStyle(fontWeight: FontWeight.w100),)
// ],
// ),
// ),
//
// Icon(Icons.arrow_forward_ios),
// ],
// ),
// )
//
//
// ),
// Divider(
// height: 1,
// color: Colors.black,
// ),
// ],
// ),
