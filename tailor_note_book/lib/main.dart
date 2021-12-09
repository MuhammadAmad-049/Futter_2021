import 'package:flutter/material.dart';
import 'package:tailor_note_book/view_details.dart';

import 'addRecord.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const appTitle ='Tailor Book';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),backgroundColor: Colors.teal,
        actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.white,
            size: 22,
          ),
          onPressed: () {
            // do something
          },
        )
      ],),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Text('Application Name',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),),
            ),

            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home',
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 14.0,
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.mode),
              title: const Text('New Record',
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 14.0,
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Sign out',
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 14.0,
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),

          ],
        ),
      ),
      body: new Center(
        child: ListView(
          children: [
            SizedBox(height: 10,),
          Container(
          height: 70,
          decoration: BoxDecoration (
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
              boxShadow: [
          BoxShadow(
          color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ]
          ),
          child: Row(
              children: [
                const SizedBox(width: 15),
                Column(
                  children: const [
                    SizedBox(height: 20,),
                    Text('Name',style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Lobster',
                    ),),
                    SizedBox(height: 5,),
                    Text('Address',style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Lobster',
                    ),),
                  ],
                ),
                const Spacer(),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Theme.of(context).primaryColor),
                  ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (Context)=>view_details()));
                    },
                  child: Text('View Detail',style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),),
                  color: Colors.teal,
                  ),
                    ]
                ),
                 ),
            SizedBox(height: 10,),
            Container(
              height: 70,
              decoration: BoxDecoration (
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]
              ),
              child: Row(
                  children: [
                    const SizedBox(width: 15),
                    Column(
                      children: const [
                        SizedBox(height: 20,),
                        Text('Name',style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Lobster',
                        ),),
                        SizedBox(height: 5,),
                        Text('Address',style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Lobster',
                        ),),
                      ],
                    ),
                    const Spacer(),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Theme.of(context).primaryColor),
                      ),
                      onPressed: (){

                      },
                      child: Text('View Detail',style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),),
                      color: Colors.teal,
                    ),
                  ]
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 70,
              decoration: BoxDecoration (
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]
              ),
              child: Row(
                  children: [
                    const SizedBox(width: 15),
                    Column(
                      children: const [
                        SizedBox(height: 20,),
                        Text('Name',style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Lobster',
                        ),),
                        SizedBox(height: 5,),
                        Text('Address',style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Lobster',
                        ),),
                      ],
                    ),
                    const Spacer(),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Theme.of(context).primaryColor),
                      ),
                      onPressed: (){},
                      child: Text('View Detail',style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),),
                      color: Colors.teal,
                    ),
                  ]
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 70,
              decoration: BoxDecoration (
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]
              ),
              child: Row(
                  children: [
                    const SizedBox(width: 15),
                    Column(
                      children: const [
                        SizedBox(height: 20,),
                        Text('Name',style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Lobster',
                        ),),
                        SizedBox(height: 5,),
                        Text('Address',style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Lobster',
                        ),),
                      ],
                    ),
                    const Spacer(),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Theme.of(context).primaryColor),
                      ),
                      onPressed: (){},
                      child: Text('View Detail',style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),),
                      color: Colors.teal,
                    ),
                  ]
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 70,
              decoration: BoxDecoration (
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]
              ),
              child: Row(
                  children: [
                    const SizedBox(width: 15),
                    Column(
                      children: const [
                        SizedBox(height: 20,),
                        Text('Name',style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Lobster',
                        ),),
                        SizedBox(height: 5,),
                        Text('Address',style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Lobster',
                        ),),
                      ],
                    ),
                    const Spacer(),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Theme.of(context).primaryColor),
                      ),
                      onPressed: (){},
                      child: Text('View Detail',style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),),
                      color: Colors.teal,
                    ),
                  ]
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 70,
              decoration: BoxDecoration (
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]
              ),
              child: Row(
                  children: [
                    const SizedBox(width: 15),
                    Column(
                      children: const [
                        SizedBox(height: 20,),
                        Text('Name',style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Lobster',
                        ),),
                        SizedBox(height: 5,),
                        Text('Address',style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Lobster',
                        ),),
                      ],
                    ),
                    const Spacer(),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Theme.of(context).primaryColor),
                      ),
                      onPressed: (){},
                      child: Text('View Detail',style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),),
                      color: Colors.teal,
                    ),
                  ]
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 70,
              decoration: BoxDecoration (
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]
              ),
              child: Row(
                  children: [
                    const SizedBox(width: 15),
                    Column(
                      children: const [
                        SizedBox(height: 20,),
                        Text('Name',style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Lobster',
                        ),),
                        SizedBox(height: 5,),
                        Text('Address',style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Lobster',
                        ),),
                      ],
                    ),
                    const Spacer(),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Theme.of(context).primaryColor),
                      ),
                      onPressed: (){},
                      child: Text('View Detail',style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),),
                      color: Colors.teal,
                    ),
                  ]
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 70,
              decoration: BoxDecoration (
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]
              ),
              child: Row(
                  children: [
                    const SizedBox(width: 15),
                    Column(
                      children: const [
                        SizedBox(height: 20,),
                        Text('Name',style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Lobster',
                        ),),
                        SizedBox(height: 5,),
                        Text('Address',style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Lobster',
                        ),),
                      ],
                    ),
                    const Spacer(),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Theme.of(context).primaryColor),
                      ),
                      onPressed: (){},
                      child: Text('View Detail',style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),),
                      color: Colors.teal,
                    ),
                  ]
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 70,
              decoration: BoxDecoration (
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]
              ),
              child: Row(
                  children: [
                    const SizedBox(width: 15),
                    Column(
                      children: const [
                        SizedBox(height: 20,),
                        Text('Name',style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Lobster',
                        ),),
                        SizedBox(height: 5,),
                        Text('Address',style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Lobster',
                        ),),
                      ],
                    ),
                    const Spacer(),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Theme.of(context).primaryColor),
                      ),
                      onPressed: (){},
                      child: Text('View Detail',style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),),
                      color: Colors.teal,
                    ),
                  ]
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 70,
              decoration: BoxDecoration (
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]
              ),
              child: Row(
                  children: [
                    const SizedBox(width: 15),
                    Column(
                      children: const [
                        SizedBox(height: 20,),
                        Text('Name',style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Lobster',
                        ),),
                        SizedBox(height: 5,),
                        Text('Address',style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Lobster',
                        ),),
                      ],
                    ),
                    const Spacer(),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Theme.of(context).primaryColor),
                      ),
                      onPressed: (){},
                      child: Text('View Detail',style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),),
                      color: Colors.teal,
                    ),
                  ]
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 70,
              decoration: BoxDecoration (
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]
              ),
              child: Row(
                  children: [
                    const SizedBox(width: 15),
                    Column(
                      children: const [
                        SizedBox(height: 20,),
                        Text('Name',style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Lobster',
                        ),),
                        SizedBox(height: 5,),
                        Text('Address',style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Lobster',
                        ),),
                      ],
                    ),
                    const Spacer(),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Theme.of(context).primaryColor),
                      ),
                      onPressed: (){},
                      child: Text('View Detail',style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),),
                      color: Colors.teal,
                    ),
                  ]
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 70,
              decoration: BoxDecoration (
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]
              ),
              child: Row(
                  children: [
                    const SizedBox(width: 15),
                    Column(
                      children: const [
                        SizedBox(height: 20,),
                        Text('Name',style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Lobster',
                        ),),
                        SizedBox(height: 5,),
                        Text('Address',style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Lobster',
                        ),),
                      ],
                    ),
                    const Spacer(),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Theme.of(context).primaryColor),
                      ),
                      onPressed: (){},
                      child: Text('View Detail',style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),),
                      color: Colors.teal,
                    ),
                  ]
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 70,
              decoration: BoxDecoration (
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]
              ),
              child: Row(
                  children: [
                    const SizedBox(width: 15),
                    Column(
                      children: const [
                        SizedBox(height: 20,),
                        Text('Name',style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Lobster',
                        ),),
                        SizedBox(height: 5,),
                        Text('Address',style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Lobster',
                        ),),
                      ],
                    ),
                    const Spacer(),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Theme.of(context).primaryColor),
                      ),
                      onPressed: (){},
                      child: Text('View Detail',style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),),
                      color: Colors.teal,
                    ),
                  ]
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 70,
              decoration: BoxDecoration (
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]
              ),
              child: Row(
                  children: [
                    const SizedBox(width: 15),
                    Column(
                      children: const [
                        SizedBox(height: 20,),
                        Text('Name',style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Lobster',
                        ),),
                        SizedBox(height: 5,),
                        Text('Address',style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Lobster',
                        ),),
                      ],
                    ),
                    const Spacer(),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Theme.of(context).primaryColor),
                      ),
                      onPressed: (){},
                      child: Text('View Detail',style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),),
                      color: Colors.teal,
                    ),
                  ]
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 70,
              decoration: BoxDecoration (
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]
              ),
              child: Row(
                  children: [
                    const SizedBox(width: 15),
                    Column(
                      children: const [
                        SizedBox(height: 20,),
                        Text('Name',style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Lobster',
                        ),),
                        SizedBox(height: 5,),
                        Text('Address',style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Lobster',
                        ),),
                      ],
                    ),
                    const Spacer(),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Theme.of(context).primaryColor),
                      ),
                      onPressed: (){},
                      child: Text('View Detail',style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),),
                      color: Colors.teal,
                    ),
                  ]
              ),
            ),
          ]
          ),
        ),
      floatingActionButton: new FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (Context)=>AddRecord()));
        },
        tooltip: 'Add new Record',
        child: new Icon(Icons.add),
        backgroundColor: Colors.blue,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}