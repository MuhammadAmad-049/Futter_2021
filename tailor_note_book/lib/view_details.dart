<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';
=======
// ignore_for_file: camel_case_types, prefer_const_constructors, deprecated_member_use, non_constant_identifier_names, no_logic_in_create_state, must_be_immutable

import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:tailor_note_book/profile.dart';
>>>>>>> 6e89a04fd54728a777f5472717d4d8cee90e001c
import 'main.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

<<<<<<< HEAD
class view_details extends StatelessWidget {
  final number = '+238192834902';
=======
class view_details extends StatefulWidget {
  Map map;
  String key2;
  view_details(this.key2, this.map, {Key? key}) : super(key: key);
>>>>>>> 6e89a04fd54728a777f5472717d4d8cee90e001c

  @override
  State<view_details> createState() => _view_detailsState(key2, map);
}

class _view_detailsState extends State<view_details> {
  Map map;
  String key2;
  _view_detailsState(this.key2, this.map);
  final ref = FirebaseDatabase.instance.ref();
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
          'View record detail',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.delete,
              color: Colors.white,
              size: 22,
            ),
            onPressed: () {
              ref.child("${UserProfile.uid}/${key2}").remove();
              Navigator.pop(context);
            },
          )
        ],
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
                map["name"] = str!;
              },
              initialValue: map["name"],
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
                map["contact"] = str!;
              },
              initialValue: map["contact"],
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
                map["address"] = str!;
              },
              initialValue: map["address"],
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
                map["length"] = str!;
              },
              initialValue: map["length"],
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
                map["armLength"] = str!;
              },
              initialValue: map["armLength"],
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
                map["teera"] = str!;
              },
              initialValue: map["teera"],
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
                map["ghera"] = str!;
              },
              initialValue: map["ghera"],
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
                map["shalwarLength"] = str!;
              },
              initialValue: map["shalwarLength"],
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
                map["paincha"] = str!;
              },
              initialValue: map["paincha"],
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
                map["collarTip"] = str!;
              },
              initialValue: map["collarTip"],
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
                map["cuff"] = str!;
              },
              initialValue: map["cuff"],
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
                map["frontPocket"] = str!;
              },
              initialValue: map["frontPocket"],
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
                map["sidePocket"] = str!;
              },
              initialValue: map["sidePocket"],
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
                map["shalwarPocket"] = str!;
              },
              initialValue: map["shalwarPocket"],
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
                map["boundary"] = str!;
              },
              initialValue: map["boundary"],
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Boundary(Round/Square)',
                labelText: 'Boundary(Round/Square)',
              ),
<<<<<<< HEAD
              RaisedButton(
                child: Text("Call"),
                onPressed: () async {
                launch('tell://$number');
                await FlutterPhoneDirectCaller.callNumber(number);
                },
              ),


            ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (Context)=> view_details()));
        },
        tooltip: 'Update Record',
        child: new Icon(Icons.mode),
        backgroundColor: Colors.blue,


      ), );

=======
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
                onPressed: () async {
                  var abc = key.currentState;
                  if (abc!.validate()) {
                    abc.save();
                    await ref.child(UserProfile.uid).update({key2: map});
                    setState(() {});
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
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var res = await FlutterPhoneDirectCaller.callNumber(map["contact"]);
        },
        tooltip: 'Call now',
        child: Icon(Icons.call),
        backgroundColor: Colors.blue,
      ),
    );
>>>>>>> 6e89a04fd54728a777f5472717d4d8cee90e001c
  }
}
