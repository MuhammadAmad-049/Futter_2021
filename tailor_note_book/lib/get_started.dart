import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import 'Signup_page.dart';
import 'main.dart';


class get_started extends StatefulWidget {


  @override
  _GetStartedPageState createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<get_started> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff009688),
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text(
            'Tailor NoteBook',
            style: TextStyle(
              fontFamily: 'Lobster',
              fontSize: 25.0,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15.0,
              left: 20.0,
              right: 20.0,
              bottom: 30.0,
            ),
            child: ImageSlideshow(
              /// Width of the [ImageSlideshow].
              width: double.infinity,

              /// Height of the [ImageSlideshow].
              height: 300,

              /// The page to show when first creating the [ImageSlideshow].
              initialPage: 0,

              /// The color to paint the indicator.
              indicatorColor: const Color(0xff009688),

              /// The color to paint behind th indicator.
              indicatorBackgroundColor: Colors.grey,

              /// The widgets to display in the [ImageSlideshow].
              /// Add the sample image file into the images folder
              children: [
                Image.asset(
                  'images/get_started1.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'images/get_started2.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'images/get_started3.png',
                  fit: BoxFit.cover,
                ),
              ],

              /// Called whenever the page in the center of the viewport changes.
              onPageChanged: (value) {},

              /// Auto scroll interval.
              /// Do not auto scroll with null or 0.
              autoPlayInterval: 3000,

              /// Loops back to first slide.
              isLoop: true,
            ),
          ),
          SizedBox(height:40),
          FlatButton(
            textColor: Colors.white,
            color: const Color(0xff009688),
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Get started",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Lobster',
                ),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const signup()),
              );
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ],

      ),

    );

  }
}
