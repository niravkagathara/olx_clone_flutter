import 'package:flutter/material.dart';

class Job extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body:  Center(
          child: Container(
            child: Text("jobs",
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
