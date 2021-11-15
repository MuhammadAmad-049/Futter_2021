import 'package:flutter/material.dart';
import 'package:numbercardsappforkids/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: "Number card app for kids",
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: splashscreen(),
    );
  }
}