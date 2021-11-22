import 'dart:async';

import 'package:alphabet_card_app_for_kids/main.dart';
import 'package:flutter/material.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({Key? key}) : super(key: key);

  @override
  _PlayScreenState createState() => _PlayScreenState();
}

List<String> Num1Alphabets = [
  '1',
  '2',
  '3',
  '4',
  '5',
  '6',
  '7',
  '8',
  '9',
  '10',
];
List<String> Num2Alphabets = [
  '11',
  '12',
  '13',
  '14',
  '15',
  '16',
  '16',
  '17',
  '18',
  '19',
  '20',

];
int count = 0;
int alphacount=1;
bool num = false;

int seconds = 5;
int minutes = 0;
Timer _timer = Timer.periodic(const Duration(seconds: 1), (_) {});

class _PlayScreenState extends State<PlayScreen> {
  void startTimer() {
    // ignore: unnecessary_null_comparison
    if (_timer != null) {
      _timer.cancel();
    }
    if (minutes > 0) {
      seconds = minutes * 60;
    }
    if (seconds > 0) {
      minutes = (seconds / 60).floor();
      seconds -= (minutes * 60);
    }
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (seconds > 0) {
          seconds--;
        } else {
          if (minutes > 0) {
            seconds = 59;
            minutes--;
          } else {
            _timer.cancel();
            // ignore: avoid_print
            print('Time Ended');
            setState(() {
              if (count < Num1Alphabets.length - 1) {
                count++;
                alphacount++;
                seconds = 5;
                startTimer();
              }
            });
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                    decoration: BoxDecoration(color: Colors.black),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white70,
                      child: CircleAvatar(
                        radius: 74,
                        backgroundImage: AssetImage('images/download.png'),
                      ),
                    )
                ),
                ListTile(
                  title: const Text('Main Screen',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  },
                ),
                const SizedBox(
                  height: 14,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  title: const Text('first Counting',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    alphaCase = true;
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PlayScreen()),
                    );
                  },
                ),
                const SizedBox(
                  height: 14,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  title: const Text('Second Counting',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                    ),),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    alphaCase = false;
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PlayScreen()),
                    );
                  },
                ),
                const SizedBox(
                  height: 14,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
              ]
          ),
        ),

        appBar: AppBar(
          title: const Text('kids Counting'),
          backgroundColor: Colors.black,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Time Left: $seconds',
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FloatingActionButton(
                      elevation: 100,
                      backgroundColor: Colors.black,
                      child: const Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Colors.lightGreenAccent,
                      ),
                      onPressed: () {
                        setState(() {
                          if (count < Num1Alphabets.length - 1) {
                            count--;
                            alphacount--;
                            seconds = 5;
                            startTimer();
                          }
                        });
                      }),
                  const SizedBox(
                    width: 220,
                    height:200,
                  ),
                  FloatingActionButton(
                      elevation: 100,
                      backgroundColor: Colors.black,
                      child: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.lightGreenAccent,
                      ),
                      onPressed: () {
                        setState(() {
                          if (count < Num1Alphabets.length - 1) {
                            count++;
                            alphacount++;
                            seconds = 5;
                            startTimer();
                          }
                        });
                      }),
                ],
              ),
              alphaCase == true
                  ? Text(
                '${Num1Alphabets[count]}',
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 70,
                    fontWeight: FontWeight.w600),
              )
                  : Text(
                '${Num2Alphabets[count]}',
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 70,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 120,
              ),
              num == false
                  ? FloatingActionButton(
                  elevation: 20,
                  backgroundColor: Colors.black,
                  child: const Icon(Icons.stop),
                  onPressed: () {
                    setState(() {
                      count;
                      startTimer();

                      num = true;
                    });
                  })
                  : Container(),
              const SizedBox(
                height: 14,

              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Numbers that you Read: $alphacount',
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ));
  }
}