// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, deprecated_member_use
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:tailor_note_book/SplashScreen.dart';
import 'package:tailor_note_book/view_details.dart';
import 'addRecord.dart';
import 'loginScreen.dart';
import 'profile.dart';
import 'package:firebase_database/firebase_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);


  static const appTitle = 'Tailor Book';

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ref = FirebaseDatabase.instance.ref().child(UserProfile.uid);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: MyApp.appTitle,
      home: LoginScreen(title: MyApp.appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
        'Customer Record',
        style: TextStyle(color: Colors.white),),
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
        image: DecorationImage(image:NetworkImage ('https://tse4.mm.bing.net/th?id=OIP.EFkZcF8bT_2Qbpk0MnyTlAHaE8&pid=Api&P=0&w=267&h=179'),
          fit: BoxFit.cover,),
                color: Colors.teal,
              ), child: null,
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
                          const EdgeInsets.only(top: 10, left: 5, right: 5,bottom:5),
                      child: Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width - 50,

                        decoration: BoxDecoration(color: Colors.white,
                          boxShadow: [
                            //background color of box
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius: 5.0, // soften the shadow
                              spreadRadius: 2.0, //extend the shadow
                              offset: Offset(
                                2.0, // Move to right 10  horizontally
                                2.0, // Move to bottom 10 Vertically
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(item["name"],style: TextStyle(fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold


                                  ),),

                                  Text(item["address"],style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold

                                  ),),
                                ],
                              ),
                            ),
                            Expanded(
                                child: FlatButton(
                                    height: 35,
                                    shape: new RoundedRectangleBorder(
                                      borderRadius: new BorderRadius.circular(10.0),
                                    ),
                                    color: Colors.teal,
                                    textColor: Colors.black,

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
        },
        tooltip: 'Add new Record',
        child: Icon(Icons.add),
        backgroundColor: Colors.teal,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
