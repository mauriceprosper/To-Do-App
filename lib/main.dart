// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'pages/home_page.dart';

import 'package:hive_flutter/hive_flutter.dart';

void main() async {

Hive.initFlutter();

var box = await Hive.openBox('mybox');

  await Hive.openBox('mybox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        ),
    );
  }
}