import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Colors.red,
        body: Container(
        padding: const EdgeInsets.all(50.0),
          decoration: const BoxDecoration(
          color: Colors.teal,
    //borderRadius: BorderRadius.all(Radius.circular(50)),
    ),
           child: Container(

            padding: const EdgeInsets.all(50.0),
            decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50),), color: Colors.white,),
          child: Column(
          children: [
            Image(image: AssetImage("images/launch.png"),height: 150,width: 150,),
            Text('Welcome to world of',style: TextStyle(
              fontFamily: 'Lobster',
            ),
            ),
            Text('Tailor Book',style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),),
            Text('Let\'s Start Now',style: TextStyle(
              fontFamily: 'Lobster',
            ),
            ),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Full Name',
                labelText: 'Name',
              ),
              validator: (String? value) {
                return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.call),
                hintText: 'Phone Number',
                labelText: 'Contact',
              ),
              validator: (String? value) {
                return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
              },
            ),
            SizedBox(height:40),
            FlatButton(
              shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
              height: 50,
                minWidth: 170,
                color: Colors.teal,
                onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (Context)=>MyApp()));
                }, child: Text('OK',style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            ),
            ),
          ],
        ),
      ),
    ),
    );

  }
}
