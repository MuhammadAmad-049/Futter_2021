// ignore_for_file: camel_case_types, prefer_const_constructors, deprecated_member_use, non_constant_identifier_names, no_logic_in_create_state, must_be_immutable

import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:tailor_note_book/profile.dart';
import 'main.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class view_details extends StatefulWidget {
  Map map;
  String key2;
  view_details(this.key2, this.map, {Key? key}) : super(key: key);

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
              height: 20,
            ),
            TextFormField(

              onSaved: (str) {
                map["name"] = str!;
              },
              initialValue: map["name"],
              decoration: InputDecoration(

                hintText: 'Full Name',
                labelText: 'Name',
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                  borderSide: new BorderSide(),
                ),
              ),
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              onSaved: (str) {
                map["contact"] = str!;
              },
              initialValue: map["contact"],
              decoration: InputDecoration(
                hintText: 'Phone Number',
                labelText: 'Contact',
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                  borderSide: new BorderSide(),
                ),
              ),
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              onSaved: (str) {
                map["address"] = str!;
              },
              initialValue: map["address"],
              decoration: InputDecoration(
                hintText: 'Address',
                labelText: 'Address',
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                  borderSide: new BorderSide(),
                ),
              ),
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              onSaved: (str) {
                map["length"] = str!;
              },
              initialValue: map["length"],
              decoration: InputDecoration(
                hintText: 'Length',
                labelText: 'Length',
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                  borderSide: new BorderSide(),
                ),
              ),
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              onSaved: (str) {
                map["armLength"] = str!;
              },
              initialValue: map["armLength"],
              decoration: InputDecoration(
                hintText: 'Arm Length',
                labelText: 'Arm Length',
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                  borderSide: new BorderSide(),
                ),
              ),
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              onSaved: (str) {
                map["teera"] = str!;
              },
              initialValue: map["teera"],
              decoration: InputDecoration(
                hintText: 'Teera',
                labelText: 'Teera',
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                  borderSide: new BorderSide(),
                ),
              ),
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              onSaved: (str) {
                map["ghera"] = str!;
              },
              initialValue: map["ghera"],
              decoration: InputDecoration(

                hintText: 'Boundary(Ghera)',
                labelText: 'Boundary(Ghera)',
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                  borderSide: new BorderSide(),
                ),
              ),
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              onSaved: (str) {
                map["shalwarLength"] = str!;
              },
              initialValue: map["shalwarLength"],
              decoration: InputDecoration(
                hintText: 'Shalwar Length',
                labelText: 'Shalwar Length',
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                  borderSide: new BorderSide(),
                ),
              ),
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              onSaved: (str) {
                map["paincha"] = str!;
              },
              initialValue: map["paincha"],
              decoration: InputDecoration(
                hintText: 'Paincha',
                labelText: 'Paincha',
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                  borderSide: new BorderSide(),
                ),
              ),
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              onSaved: (str) {
                map["collarTip"] = str!;
              },
              initialValue: map["collarTip"],
              decoration: InputDecoration(
                hintText: 'Collar Tip',
                labelText: 'Collar Tip',
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                  borderSide: new BorderSide(),
                ),
              ),
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              onSaved: (str) {
                map["cuff"] = str!;
              },
              initialValue: map["cuff"],
              decoration: InputDecoration(
                hintText: 'Cuff',
                labelText: 'Cuff',
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                  borderSide: new BorderSide(),
                ),
              ),
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              onSaved: (str) {
                map["frontPocket"] = str!;
              },
              initialValue: map["frontPocket"],
              decoration: InputDecoration(
                hintText: 'Front Pocket (Yes/No)',
                labelText: 'Front Pocket',
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                  borderSide: new BorderSide(),
                ),
              ),
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              onSaved: (str) {
                map["sidePocket"] = str!;
              },
              initialValue: map["sidePocket"],
              decoration: InputDecoration(
                hintText: 'Side Pocket (Yes/No)',
                labelText: 'Side Pocket ',
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                  borderSide: new BorderSide(),
                ),
              ),
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              onSaved: (str) {
                map["shalwarPocket"] = str!;
              },
              initialValue: map["shalwarPocket"],
              decoration: InputDecoration(

                hintText: 'Shalwar Pocket (Yes/No)',
                labelText: 'Shalwar Pocket',
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                  borderSide: new BorderSide(),
                ),
              ),
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              onSaved: (str) {
                map["boundary"] = str!;
              },
              initialValue: map["boundary"],
              decoration: InputDecoration(
                hintText: 'Boundary(Round/Square)',
                labelText: 'Boundary(Round/Square)',
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                  borderSide: new BorderSide(),
                ),
              ),
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
            SizedBox(
              height: 20,
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
                  'Update and Save Record',
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
        backgroundColor: Colors.green,
      ),
    );
  }
}
