import 'dart:async';

import 'package:flutter/material.dart';
import 'package:olx_clone/Home.dart';
import 'package:olx_clone/screen2.dart';

class Screen1 extends StatefulWidget {
  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  void initState(){
    super.initState();
    Timer(
        const Duration(seconds: 3),
            (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Home()),
          );
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/image/olxmain.jpeg",
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}