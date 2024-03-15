import 'package:flutter/material.dart';

class Year extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body:  Center(
          child: Container(
            child: Text("Year",
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
