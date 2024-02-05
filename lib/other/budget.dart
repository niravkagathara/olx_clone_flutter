import 'package:flutter/material.dart';

class Budget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body:  Center(
          child: Container(
            child: Text("Budget",
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
