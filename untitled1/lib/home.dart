import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:numbercardsappforkids/splash.dart';

import 'navigatiodrawer.dart';


class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {


  List<String> des = [
    "    START FROM 1 AND END WITH 10 \n\n\n\n                        START \n\n\n",
    "    START FROM 11 AND END WITH 20 \n\n\n\n                        START \n\n\n",

  ];

  Widget customcard(String langname, String des){
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 30.0,
      ),
      child: InkWell(
        onTap: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            // in changelog 1 we will pass the langname name to ther other widget class
            // this name will be used to open a particular JSON file
            // for a particular language
            builder: (context) => splashscreen(),
          ));
        },
        child: Material(
          color: Colors.lightGreenAccent,
          elevation: 100.0,
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),

                ),
                Center(
                  child: Text(
                    langname,
                    style: TextStyle(
                      fontSize: 20.0,

                      color: Colors.black,

                      fontFamily: "Quandl",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    des,
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontFamily: "Alike"
                    ),
                    maxLines: 5,
                    textAlign: TextAlign.justify,
                  ),

                ),
              ],
            ),
          ),
        ),
      ),
    );


  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown, DeviceOrientation.portraitUp
    ]);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "KIDS NUMERIC APP",
          style: TextStyle(
            fontFamily: "Quandl",
          ),
        ),
      ),
      drawer: MyDrawer(),
      body: ListView(
        children: <Widget>[
          customcard(" 1", des[0]),
          customcard("2", des[1]),

        ],
      ),
    );
  }
}