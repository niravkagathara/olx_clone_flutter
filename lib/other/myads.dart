import 'package:flutter/material.dart';

class Ads extends StatefulWidget {
  const Ads({super.key});

  @override
  State<Ads> createState() => _AdsState();
}

class _AdsState extends State<Ads> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(

      body:  Center(
        child: Container(
          child: Text("No Ads",
            style: TextStyle(
              fontSize: 30,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),),
        ),
      ),
    ),
    );
  }
}