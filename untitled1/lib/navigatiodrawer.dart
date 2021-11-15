import 'package:flutter/material.dart';
import 'package:numbercardsappforkids/home.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          // DrawerHeader(child: Text('Ahmer')),
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
                color: Colors.black
              //gradient: LinearGradient(colors: [Colors.blue, Colors.green,Colors.purple]),
            ),
            accountName: Text('Muhammad Amad Ali'),
            accountEmail: Text('muhammmadamad147@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: Text('Ammad_Ai'),
              backgroundColor: Colors.white,
            ),

            onDetailsPressed: () {

            },
          ),
          ListTile(
            leading: Icon(Icons.home_outlined),
            title: Text('Home'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => homepage()));
            },
            // enabled: false,
            selected: true,
          ),

          Divider(thickness: 5.0),


          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: ListTile(
                leading: Icon(Icons.close),
                title: Text('Dismiss'),
                onTap: () {
                  Navigator.of(context).pop();
                  print('Pressed');
                },
                //enabled: false,
                //selected: true,
              ),
            ),
          )
        ],
      ),
    );
  }
}
