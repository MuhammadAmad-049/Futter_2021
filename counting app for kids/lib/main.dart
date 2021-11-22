import 'package:alphabet_card_app_for_kids/PlayScreen.dart';
import 'package:flutter/material.dart';

import 'SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kids counting  App',
      theme: ThemeData(
        backgroundColor: Colors.black,
      ),
      home: const SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

bool alphaCase = true;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white70,
                  child: CircleAvatar(
                    radius: 74,
                    backgroundImage: AssetImage('images/download.png'),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),

              ListTile(
                title: const Text('Home',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
                ),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              const SizedBox(
                height: 10,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              ListTile(
                title: const Text('Account',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  ),),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              const SizedBox(
                height: 10,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              ListTile(
                title: const Text('Setting',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  ),),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              const SizedBox(
                height: 10,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              ListTile(
                title: const Text('About us',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  ),),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              const SizedBox(
                height: 10,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              ListTile(
                title: const Text('App info',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  ),),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              const SizedBox(
                height: 10,
                child: Divider(
                  color: Colors.black,
                ),
              ),
            ]
        ),
      ),
      appBar: AppBar(
        title: Text('Kids Counting App'),
        backgroundColor: Colors.black,
      ),
      body: Center(

        child: Column(
          children: [

            Text('Select Your Choice.',
              style: TextStyle(
                  fontSize: 30,
                  height:2,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              textAlign: TextAlign.center,),


            GestureDetector(
                onTap: () {
                  alphaCase = true;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PlayScreen()),
                  );

                },
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black,
                    ),

                    height: 200,
                    width: 300,

                    child: const Padding(
                      padding: EdgeInsets.all(70.0),

                      child: Text(

                        'Counting 1-10',
                        style: TextStyle(

                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
                onTap: () {
                  alphaCase = false;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PlayScreen()),
                  );
                },
                child: Container(

                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black,
                    ),

                    height: 200,
                    width: 300,
                    child: const Padding(

                      padding: EdgeInsets.all(70.0),
                      child: Text(
                        'Counting 11-20',
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
}