import 'package:flutter/material.dart';
import 'package:olx_clone/other/bike.dart';
import 'package:olx_clone/car.dart';
import 'package:olx_clone/other/chat.dart';
import 'package:olx_clone/other/demo.dart';
import 'package:olx_clone/other/jobs.dart';
import 'package:olx_clone/other/mobile.dart';
import 'package:olx_clone/other/prop.dart';
import 'package:olx_clone/screen3.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    // var name = ["CARS", "PROPERTIES", "MOBILES", "BIKES"];
    // var data = [
    //   "assets/image/i1.png",
    //   "assets/image/i2.png",
    //   "assets/image/i3.png",
    //   "assets/image/i4.png"
    // ];
    // var arrColor = [
    //   Colors.yellow,
    //   Colors.grey,
    //   Colors.cyan,
    //   Colors.green,
    //   Colors.red,
    //   Colors.teal,
    // ];
    var product = [
      {
        'price': '₹1,75,000',
        'coName': 'RE Intergration',
        'location': 'WORLI,MUMBAI',
        'img1': 'assets/image/bike1.jpeg',
        'img2': 'assets/image/bike2.jpeg',
        'img3': 'assets/image/bike3.jpeg',
        'img4': 'assets/image/bike1.jpeg',
        'coDetail': '2019-175km',
        'date': '13 JAN',
        'Brand': 'Roayal Enfield',
        'Des': 'RE Integration'
      },
      {
        'price': '₹12,95,000',
        'coName': 'Toyota Fortuner',
        'location': 'VIJAY NAGAR,INDOR',
        'img1': 'assets/image/car1.jpeg',
        'img2': 'assets/image/car2.jpeg',
        'img3': 'assets/image/car3.jpeg',
        'img4': 'assets/image/car4.jpeg',
        'coDetail': '[2011-2016]',
        'date': '11 NOV',
        'Brand': 'TOYOTA',
        'Des':
            '''single handed used with lethar seat cover hy music system touch screen and diamond cut alloy wheels

ADDITIONAL VEHICLE INFORMATION:

ABS: Yes

Accidental: No

Adjustable External Mirror: Power

''',
      },
      {
        'price': '₹48,999',
        'coName': '12 pro max',
        'location': 'OM CHAUPATI,DHROL',
        'img1': 'assets/image/iphone1.jpeg',
        'img2': 'assets/image/iphone2.jpeg',
        'img3': 'assets/image/iphone1.jpeg',
        'img4': 'assets/image/iphone2.jpeg',
        'coDetail': '12 pro',
        'date': '12 JAN',
        'Brand': 'IPHONE',
        'Des': '''Excellent condition\n With Box and bill\n 5G
        '''
      },
      {
        'price': '₹45,000',
        'coName': 'Canon EOS 6D',
        'location': 'BHAKTI NAGAR,RAJ..',
        'img1': 'assets/image/camera1.jpeg',
        'img2': 'assets/image/camera2.jpeg',
        'img3': 'assets/image/camera3.jpeg',
        'img4': 'assets/image/camera4.jpeg',
        'coDetail': 'Canon',
        'date': '27 JAN',
        'Brand': 'CANON',
        'Des': 'Good Condition with 2battry 24-105 lanc'
      },
      {
        'price': '₹45,00,000',
        'coName': 'Compect 1BHK ',
        'location': 'BORIWALI,MUMBAI',
        'img1': 'assets/image/home1.jpeg',
        'img2': 'assets/image/home2.jpeg',
        'img3': 'assets/image/home3.jpeg',
        'img4': 'assets/image/home4.jpeg',
        'img5': 'assets/image/home5.jpeg',
        'coDetail': '1 bds - 1ba 430ft2',
        'date': '3 JAN',
        'Brand': 'Ternament',
        'Des': 'This flat is very Spacious and it has garden facing.....'
      },
      {
        'price': '₹16,500',
        'coName': 'Vivo Y100',
        'location': 'VRUNDAVAN,DHROL',
        'img1': 'assets/image/phone1.jpeg',
        'img2': 'assets/image/phone1.jpeg',
        'img3': 'assets/image/phone1.jpeg',
        'img4': 'assets/image/phone1.jpeg',
        'coDetail': '2019',
        'date': '1 JAN',
        'Brand': 'Vivo',
        'Des': 'Bill Box COmplate'
      },
    ];
    double screenHeight = MediaQuery.of(context).size.height * 1;
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
          child: Column(
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
              Container(
                margin: EdgeInsets.only(
                  top: 0,
                  left: 10,
                  right: 10,
                  bottom: 0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Browse Categories",
                      style: TextStyle(
                        fontSize: 18,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return Demo();
                          },
                        ));
                      },
                      child: Row(
                        children: [
                          Text(
                            "See All",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                          // Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return Car();
                              },
                            ),
                          );
                        },
                        child: Column(
                                                    children: [
                        Expanded(
                          child: Image.asset(
                            "assets/image/i1.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Text("CARS")
                                                    ],
                                                  )),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return Prop();
                              },
                            ),
                          );
                        },
                        child: Column(
                                                  children: [
                        Expanded(
                          child: Image.asset(
                            "assets/image/i2.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Text("PROPERTIES")
                                                  ],
                                                )),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return Mobile();
                              },
                            ),
                          );
                        },
                        child: Column(
                                                  children: [
                        Expanded(
                          child: Image.asset(
                            "assets/image/i3.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Text("MOBILES")
                                                  ],
                                                )),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return Bike();
                              },
                            ),
                          );
                        },
                        child: Column(
                                                  children: [
                        Expanded(
                          child: Image.asset(
                            "assets/image/i4.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Text("BIKES")
                                                  ],
                                                )),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return Job();
                              },
                            ),
                          );
                        },
                        child: Column(
                                                  children: [
                        Expanded(
                          child: Image.asset(
                            "assets/image/i5.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Text("JOBS")
                                                  ],
                                                ))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 10,
                  left: 10,
                  right: 10,
                  bottom: 3,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Fresh recommendations",
                      style: TextStyle(
                        fontSize: 18,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    // TextButton(
                    //   onPressed: () {
                    //     Navigator.of(context).push(MaterialPageRoute(
                    //       builder: (context) {
                    //         return Chat();
                    //       },
                    //     ));
                    //   },
                    //   child: Row(
                    //     children: [
                    //       // Icon(Icons.arrow_drop_down)
                    //       // Icon(Icons.arrow_forward_ios),
                    //     ],
                    //   ),
                    // )
                  ],
                ),
              ),
              Container(
                // height: screenHeight,
                height: 400,
                child: GridView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return Screen3(
                                  price: '${product[index]["price"]}',
                                  coName: '${product[index]["coName"]}',
                                  location: '${product[index]["location"]}',
                                  img1: '${product[index]["img1"]}',
                                  img2: '${product[index]["img2"]}',
                                  img3: '${product[index]["img3"]}',
                                  img4: '${product[index]["img3"]}',
                                  coDetail: '${product[index]["coDetail"]}',
                                  date: '${product[index]["datr"]}',
                                  Brand: '${product[index]["Brand"]}',
                                  Des: '${product[index]["Des"]}');
                              //     Screen3(
                              //     price:product[index]['price'],
                              //     coName:product[index]['coName'],
                              //     location:product[index]['location'],
                              //   img1:product[index]['img1'],
                              //   img2:product[index]['img2'],
                              //   img3:product[index]['img3'],
                              //   img4:product[index]['img4'],
                              //   coDetail:product[index]['coDetail'],
                              //   date:product[index]['date'],
                              //   Brand:product[index]['Brand'],
                              //   Des:product[index]['Des'],
                              //   );
                            },
                          ),
                        ).then((value) => product[index]);
                      },
                      child: Container(
                        height: 100,
                        // margin: EdgeInsets.only(),
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.0, color: Colors.grey),
                        ),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                PositionedDirectional(
                                    child: Icon(Icons.favorite_border), end: 1),
                                SizedBox(
                                  child: Image(
                                      image: AssetImage(
                                          '${product[index]["img1"]}')),
                                  height: 90,
                                  width: 200,
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                        '${product[index]["price"]}\n${product[index]["coName"]}\n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.location_on_outlined),
                                    Text('${product[index]["location"]}',style: TextStyle(fontSize: 10),)
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: product.length,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 3),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
