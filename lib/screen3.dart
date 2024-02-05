import 'package:flutter/material.dart';
import 'package:olx_clone/other/chat.dart';
import 'package:olx_clone/other/demo.dart';

class Screen3 extends StatelessWidget {
  String price,
      coName,
      location,
      img1,
      img2,
      img3,
      img4,
      coDetail,
      date,
      Brand,
      Des;
  Screen3({
   required this.price,
  required  this.coName,
  required this.location,
  required this.img1,
  required this.img2,
  required this.img3,
  required  this.img4,
  required  this.coDetail,
  required this.date,
  required this.Brand,
  required  this.Des,super.key});
  int currentTab = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentscreen = Demo();

  @override
  Widget build(BuildContext context) {
    var arrColor = [
      Colors.yellow,
      Colors.grey,
      Colors.cyan,
      Colors.green,
      Colors.red,
      Colors.teal,
    ];
    var product = [
      {
        'price': '₹1,75,000',
        'coName': 'RE Intergration',
        'location': 'WORLI,MUMBAI',
        'img1': 'assets/image/bike1.jpeg',
        'img2': 'assets/image/bike2.jpeg',
        'img3': 'assets/image/bike3.jpeg',
        'img4': 'assets/image/bike1.jpeg',
      },
      {
        'price': '₹12,95,000',
        'coName': 'Toyota Fortuner 2011-..',
        'location': 'VIJAY NAGAR,INDOR',
        'img1': 'assets/image/car1.jpeg',
        'img2': 'assets/image/car2.jpeg',
        'img3': 'assets/image/car3.jpeg',
        'img4': 'assets/image/car4.jpeg',
      },
      {
        'price': '₹48,999',
        'coName': '12 pro max',
        'location': 'OM CHAUPATI,DHROL',
        'img1': 'assets/image/iphone1.jpeg',
        'img2': 'assets/image/iphone2.jpeg',
        'img3': 'assets/image/iphone1.jpeg',
        'img4': 'assets/image/iphone2.jpeg',
      },
      {
        'price': '₹45,000',
        'coName': 'Canon EOS 6D',
        'location': 'BHAKTI NAGAR,RAJ..',
        'img1': 'assets/image/camera1.jpeg',
        'img2': 'assets/image/camera2.jpeg',
        'img3': 'assets/image/camera3.jpeg',
        'img4': 'assets/image/camera4.jpeg',
      },
      {
        'price': '₹45,00,000',
        'coName': 'Compect 1BHK ',
        'location': 'BORIWALI,MUMBAI',
        'img1': 'assets/image/home1.jpeg',
        'img2': 'assets/image/home2.jpeg',
        'img3': 'assets/image/home3.jpeg',
        'img4': 'assets/image/home4.jpeg',
        'img5': 'assets/image/home5.jpeg'
      },
      {
        'price': '₹16,500',
        'coName': 'Vivo Y100 for SALE',
        'location': 'VRUNDAVAN,DHROL',
        'img1': 'assets/image/phone1.jpeg',
        'img2': 'assets/image/phone1.jpeg',
        'img3': 'assets/image/phone1.jpeg',
        'img4': 'assets/image/phone1.jpeg',
      },
    ];

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: Text("Detail")),
      body: SingleChildScrollView(
        child: Container(
          height: 800,
          child: Column(
            children: [
              Container(
                height: 200,
                width: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      child: Stack(
                          children: [
                            SizedBox(
                              height: 350,
                              width: 350,
                              child: Row(
                                children: [
                                  Image(
                                      image: AssetImage(img1),
                                      fit: BoxFit.fill),
                                ],
                              ),
                            ),
                          ]),
                    ),
                    Container(
                      child: Stack(
                          children: [
                            SizedBox(
                              height: 350,
                              width: 350,
                              child: Row(
                                children: [
                                  Image(
                                      image: AssetImage(img2),
                                      fit: BoxFit.fill),
                                ],
                              ),
                            ),
                          ]),
                    ),
                    Container(
                      child: Stack(
                          children: [
                            SizedBox(
                              height: 350,
                              width: 350,
                              child: Row(
                                children: [
                                  Image(
                                      image: AssetImage(img3),
                                      fit: BoxFit.fill),
                                ],
                              ),
                            ),
                          ]),
                    ),
                    Container(
                child: Stack(
                children: [
                  SizedBox(
                    height: 350,
                    width: 350,
                  child: Row(
                    children: [
                      Image(
                          image: AssetImage(img4),
                          fit: BoxFit.fill),
                    ],
                  ),
                ),
              ]),
        ),
                  ]
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text( price
                          ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.favorite),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text( coName,
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(coDetail),
                    ),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_on),
                            Text(location)
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Text(date),
                        ),
        
                      ],
                    ),
                    Divider(
                      height: 5,
                    )
        
                  ],
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Detail"
                      ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                ),
              ),
              Container(
                height: 50,alignment: Alignment.centerLeft,
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
        
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Brand"),
                              Text(Brand),
        
                            ],
                          )
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Padding(padding: EdgeInsets.all(2));
                    }, itemCount: 1)
              ),
              Divider(
                height: 2,
              ),
              SingleChildScrollView(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                              Row(
                        
                                children: [
                                  Padding(padding: EdgeInsets.all(3),
                                    child: Text("Descripation"
                                        ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                        
                                  ),
                                  Text("")
                                ],
                              ),
                              Text(Des)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
          bottomNavigationBar: BottomAppBar(
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                    
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return Chat();
                              },
                            ),
                          );
                        },
                        child: Container(
                          color: Colors.green.shade900,
                          height: 100,
                          width: 140,
                          child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.chat_bubble_outline_rounded,color: Colors.white),
                              Text("chat",style: TextStyle(color: Colors.white)),
                            ],
                          ),
                        ),
                    
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                    
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return Demo()
                                  ;
                              },
                            ),
                          );
                        },
                        child: Container(
                          color: Colors.green.shade900,
                          height: 100,
                          width: 140,
                          child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.local_offer,color: Colors.white),
                              Text("Make offer",style: TextStyle(color: Colors.white)),
                            ],
                          ),
                        ),
                    
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
    ));
  }
}
