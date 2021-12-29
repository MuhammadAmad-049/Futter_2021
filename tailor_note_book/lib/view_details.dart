import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';
import 'main.dart';

class view_details extends StatelessWidget {
  final number = '+238192834902';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {  Navigator.push(context, MaterialPageRoute(builder: (Context)=>MyApp()));},
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),title: Text('View record detail',style: TextStyle(color: Colors.white),),backgroundColor: Colors.teal,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.delete,
              color: Colors.white,
              size: 22,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: new Center(
        child:
        ListView(
            children: [
              SizedBox(height: 10,),
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
              SizedBox(height: 5,),
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
              SizedBox(height: 5,),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Address',
                  labelText: 'Address',
                ),
                validator: (String? value) {
                  return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                },
              ),
              SizedBox(height: 5,),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Length',
                  labelText: 'Length',
                ),
                validator: (String? value) {
                  return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                },
              ),
              SizedBox(height: 5,),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Arm Length',
                  labelText: 'Arm Length',
                ),
                validator: (String? value) {
                  return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                },
              ),
              SizedBox(height: 5,),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Teera',
                  labelText: 'Teera',
                ),
                validator: (String? value) {
                  return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                },
              ),
              SizedBox(height: 5,),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Boundary(Ghera)',
                  labelText: 'Boundary(Ghera)',
                ),
                validator: (String? value) {
                  return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                },
              ),
              SizedBox(height: 5,),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Shalwar Length',
                  labelText: 'Shalwar Length',
                ),
                validator: (String? value) {
                  return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                },
              ),
              SizedBox(height: 5,),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Paincha',
                  labelText: 'Paincha',
                ),
                validator: (String? value) {
                  return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                },
              ),
              SizedBox(height: 5,),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Collar Tip',
                  labelText: 'Collar Tip',
                ),
                validator: (String? value) {
                  return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                },
              ),
              SizedBox(height: 5,),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Cuff',
                  labelText: 'Cuff',
                ),
                validator: (String? value) {
                  return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                },
              ),
              SizedBox(height: 5,),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Front Pocket (Yes/No)',
                  labelText: 'Front Pocket',
                ),
                validator: (String? value) {
                  return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                },
              ),
              SizedBox(height: 5,),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Side Pocket (Yes/No)',
                  labelText: 'Side Pocket ',
                ),
                validator: (String? value) {
                  return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                },
              ),
              SizedBox(height: 5,),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Shalwar Pocket (Yes/No)',
                  labelText: 'Shalwar Pocket',
                ),
                validator: (String? value) {
                  return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                },
              ),
              SizedBox(height: 5,),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Boundary(Round/Square)',
                  labelText: 'Boundary(Round/Square)',
                ),
                validator: (String? value) {
                  return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                },
              ),
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

  }
}