// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:tailor_note_book/Signup_page.dart';
import 'package:tailor_note_book/SplashScreen.dart';
import 'package:tailor_note_book/view_details.dart';
<<<<<<< HEAD
import 'package:anim_search_bar/anim_search_bar.dart';
import 'addRecord.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());}
=======
import 'addRecord.dart';
import 'profile.dart';
import 'package:firebase_database/firebase_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const signup());
}
>>>>>>> 6e89a04fd54728a777f5472717d4d8cee90e001c

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

<<<<<<< HEAD
=======
  static const appTitle = 'Tailor Book';

  @override
  State<MyApp> createState() => _MyAppState();
}
>>>>>>> 6e89a04fd54728a777f5472717d4d8cee90e001c

class _MyAppState extends State<MyApp> {
  final ref = FirebaseDatabase.instance.ref().child(UserProfile.uid);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
<<<<<<< HEAD

      home: MyHomePage(),
=======
      title: MyApp.appTitle,
      home: MyHomePage(title: MyApp.appTitle),
>>>>>>> 6e89a04fd54728a777f5472717d4d8cee90e001c
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD

      appBar: AppBar(title: Text("Tailor Book"),
        backgroundColor: Colors.teal,
        actions: [
          SizedBox(
            height: 20,
            child: AnimSearchBar(

              width: 300,
              textController: textController,
              prefixIcon: Icon(Icons.search,color: Colors.teal,),
              suffixIcon:Icon(Icons.close,color: Colors.teal,) ,
              closeSearchOnSuffixTap: true,
              onSuffixTap: () {
                setState(() {
                  textController.clear();
                });
              },
            ),
          )


        ],

      ),


=======
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.teal,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
              size: 22,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
>>>>>>> 6e89a04fd54728a777f5472717d4d8cee90e001c
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
              child: Text(
                'Application Name',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text(
                'Home',
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
              title: const Text(
                'New Record',
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
              title: const Text(
                'Sign out',
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
<<<<<<< HEAD

      body: Center(
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

            ]
        ),

      ),

      floatingActionButton: new FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (Context)=>AddRecord()));
=======
      body: StreamBuilder(
        stream: ref.onValue,
        builder: (context, AsyncSnapshot<DatabaseEvent> snap) {
          if (snap.hasData) {
            if (snap.data!.snapshot.value != null) {
              DataSnapshot ds = snap.data!.snapshot;
              Map map = ds.value as Map;
              map = map[UserProfile.uid];
              var list = [];

              map.forEach((key, value) {
                list.add(key);
              });
              return ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (_, index) {
                    Map item = map[list[index]];
                    return Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 25, right: 25),
                      child: Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width - 50,
                        decoration: BoxDecoration(color: Colors.green),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(item["name"]),
                                  Text(item["address"]),
                                ],
                              ),
                            ),
                            Expanded(
                                child: FlatButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) =>
                                              view_details(list[index], item),
                                        ),
                                      );
                                    },
                                    child: Text("Details")))
                          ],
                        ),
                      ),
                    );
                  });
            } else {
              return Center(
                child: Text("No data Exist"),
              );
            }
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (Context) => AddRecord()));
>>>>>>> 6e89a04fd54728a777f5472717d4d8cee90e001c
        },
        tooltip: 'Add new Record',
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
