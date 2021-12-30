// ignore_for_file: deprecated_member_use, non_constant_identifier_names, file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:tailor_note_book/newEntry.dart';
import 'package:tailor_note_book/profile.dart';

import 'main.dart';

class AddRecord extends StatefulWidget {
  const AddRecord({Key? key}) : super(key: key);

  @override
  State<AddRecord> createState() => _AddRecordState();
}

final ref = FirebaseDatabase.instance.ref();

class _AddRecordState extends State<AddRecord> {
  String name = "";
  String contact = "";
  String address = "";
  String lenght = "";
  String armLength = "";
  String teera = "";
  String ghera = "";
  String shalwarLength = "";
  String paincha = "";
  String collarTip = "";
  String cuff = "";
  String frontPocket = "";
  String sidePocket = "";
  String shalwarPocket = "";
  String boundary = "";
  final key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (Context) => MyApp()));
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Text(
          'Add New Record',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Form(
          key: key,
          child: ListView(children: [
            SizedBox(
              height: 10,
            ),
            TextFormField(
              onSaved: (str) {
                name = str!;
              },
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
            SizedBox(
              height: 5,
            ),
            TextFormField(
              onSaved: (str) {
                contact = str!;
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
            SizedBox(
              height: 5,
            ),
            TextFormField(
              onSaved: (str) {
                address = str!;
              },
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Address',
                labelText: 'Address',
              ),
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              onSaved: (str) {
                lenght = str!;
              },
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Length',
                labelText: 'Length',
              ),
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              onSaved: (str) {
                armLength = str!;
              },
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Arm Length',
                labelText: 'Arm Length',
              ),
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              onSaved: (str) {
                teera = str!;
              },
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Teera',
                labelText: 'Teera',
              ),
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              onSaved: (str) {
                ghera = str!;
              },
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Boundary(Ghera)',
                labelText: 'Boundary(Ghera)',
              ),
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              onSaved: (str) {
                shalwarLength = str!;
              },
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Shalwar Length',
                labelText: 'Shalwar Length',
              ),
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              onSaved: (str) {
                paincha = str!;
              },
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Paincha',
                labelText: 'Paincha',
              ),
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              onSaved: (str) {
                collarTip = str!;
              },
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Collar Tip',
                labelText: 'Collar Tip',
              ),
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              onSaved: (str) {
                cuff = str!;
              },
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Cuff',
                labelText: 'Cuff',
              ),
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              onSaved: (str) {
                frontPocket = str!;
              },
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Front Pocket (Yes/No)',
                labelText: 'Front Pocket',
              ),
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              onSaved: (str) {
                sidePocket = str!;
              },
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Side Pocket (Yes/No)',
                labelText: 'Side Pocket ',
              ),
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              onSaved: (str) {
                shalwarPocket = str!;
              },
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Shalwar Pocket (Yes/No)',
                labelText: 'Shalwar Pocket',
              ),
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              onSaved: (str) {
                boundary = str!;
              },
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Boundary(Round/Square)',
                labelText: 'Boundary(Round/Square)',
              ),
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: FlatButton(
                // shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                height: 50,
                minWidth: 170,
                color: Colors.teal,
                onPressed: () {
                  var abc = key.currentState;
                  if (abc!.validate()) {
                    abc.save();
                    var entry = NewEntry(
                      name: name,
                      contact: contact,
                      address: address,
                      lenght: lenght,
                      armLength: armLength,
                      boundary: boundary,
                      shalwarLength: shalwarLength,
                      sidePocket: sidePocket,
                      frontPocket: frontPocket,
                      collarTip: collarTip,
                      cuff: cuff,
                      ghera: ghera,
                      paincha: paincha,
                      shalwarPocket: shalwarPocket,
                      teera: teera,
                    );
                    ref.child(UserProfile.uid).push().set(entry.toJson());
                    Navigator.pop(context);

                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (Context) => MyApp()));
                  }
                },
                child: Text(
                  'Save Record',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
