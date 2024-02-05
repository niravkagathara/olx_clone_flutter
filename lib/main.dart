import 'package:flutter/material.dart';
import 'package:olx_clone/other/demo.dart';
import 'package:olx_clone/screen1.dart';
import 'package:olx_clone/screen2.dart';

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
      home: Screen1(),
    );
  }
}
