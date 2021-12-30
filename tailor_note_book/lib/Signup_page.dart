// ignore_for_file: deprecated_member_use, non_constant_identifier_names, file_names, prefer_const_constructors

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'profile.dart';

import 'main.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    String phone = "";
    final key = GlobalKey<FormState>();
    return MaterialApp(
      home: Scaffold(
        //  backgroundColor: Colors.red,
        body: Container(
          padding: const EdgeInsets.all(50.0),
          decoration: const BoxDecoration(
            color: Colors.teal,
            //borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          child: Container(
            padding: const EdgeInsets.all(50.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
              color: Colors.white,
            ),
            child: Form(
              key: key,
              child: Column(
                children: [
                  Image(
                    image: AssetImage("images/launch.png"),
                    height: 150,
                    width: 150,
                  ),
                  Text(
                    'Welcome to world of',
                    style: TextStyle(
                      fontFamily: 'Lobster',
                    ),
                  ),
                  Text(
                    'Tailor Book',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Let\'s Start Now',
                    style: TextStyle(
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
                      return (value != null && value.contains('@'))
                          ? 'Do not use the @ char.'
                          : null;
                    },
                  ),
                  TextFormField(
                    onSaved: (str) {
                      phone = str!;
                    },
                    decoration: InputDecoration(
                      icon: Icon(Icons.call),
                      hintText: 'Phone Number',
                      labelText: 'Contact',
                    ),
                    validator: (String? value) {
                      return (value != null && value.contains('@'))
                          ? 'Do not use the @ char.'
                          : null;
                    },
                  ),
                  SizedBox(height: 40),
                  FlatButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    height: 50,
                    minWidth: 170,
                    color: Colors.teal,
                    onPressed: () {
                      var abc = key.currentState;
                      if (abc!.validate()) {
                        abc.save();
                        try {
                          auth.verifyPhoneNumber(
                              phoneNumber: phone,
                              verificationCompleted: (user) {
                               UserProfile.uid = user.providerId;
                              },
                              verificationFailed: (e) {},
                              codeSent: (s, code) {},
                              codeAutoRetrievalTimeout: (str) {});
                        } on FirebaseAuthException catch (e) {
                          print(e.code);
                        }
                      }

                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (Context) => MyApp()));
                    },
                    child: Text(
                      'OK',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
