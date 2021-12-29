import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'main.dart';
class AddRecord extends StatelessWidget {
  const AddRecord({Key? key}) : super(key: key);

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
      ),title: Text('Add New Record',style: TextStyle(color: Colors.white),),backgroundColor: Colors.teal,),
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
              SizedBox(height: 5,),
              Expanded(child:  FlatButton(
                // shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                height: 50,
                minWidth: 170,
                color: Colors.teal,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (Context)=>MyApp()));
                }, child: Text('Save Record',style: TextStyle(
                color: Colors.white,
              ),
              ),
              ),),

            ]
        ),
      ),
    );
  }
}