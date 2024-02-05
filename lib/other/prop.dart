import 'package:flutter/material.dart';

class Prop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body:  Center(
          child: Container(
            child: Text("Properties",
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
