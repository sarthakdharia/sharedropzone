import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:get/get.dart';
import 'package:sharedropzone/home.dart';
import 'package:sharedropzone/pages/homepage.dart';
import 'package:sharedropzone/pages/newdrive.dart';

class MySplashScreen extends EasySplashScreen {
  MySplashScreen({Key? key})
      : super(
            logo: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Logo_NIKE.svg/1200px-Logo_NIKE.svg.png'));

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: logo,
      backgroundColor: Colors.teal,
      navigator: HomePage(),
      durationInSeconds: 5,
    );
  }
}
