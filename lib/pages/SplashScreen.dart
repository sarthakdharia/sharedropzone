import 'dart:async';
import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:get/get.dart';
import 'package:sharedropzone/pages/homepage.dart';
import 'package:sharedropzone/pages/newdrive.dart';

class MySplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<MySplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 179, 253, 253),
        child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'images/cloud.png',
            scale: 5,
          ),
          SizedBox(height: 130),
          CircularProgressIndicator(),
        ])));
  }
}
