import 'package:flutter/material.dart';
import 'dart:async';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 10),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MyHomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height / 2,

                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('images1/app_icon.jpg'),


                  ),
                ),
                Text('Welcome to app',
                  style: TextStyle(
                      fontSize: 30,
                      height:2,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,)
              ]
          ),
        ),
      ),
    );
  }
}