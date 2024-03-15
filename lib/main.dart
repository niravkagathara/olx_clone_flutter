import 'package:flutter/material.dart';
import 'package:olx_clone/Home.dart';
import 'package:olx_clone/other/demo.dart';
import 'package:olx_clone/screen1.dart';
import 'package:olx_clone/screen2.dart';
import 'package:olx_clone/shared.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home:FutureBuilder(
        future: SharedPreferences.getInstance(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data != null) {
              print('DATA IN PREFERENCE :::: ${snapshot.data!.getString('ScreenName')}');
              return snapshot.data!.getString('ScreenName') != null
                  ? Home()
                  : Shared();
            } else {
              return Shared();
            }
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
