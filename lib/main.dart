import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sharedropzone/pages/SplashScreen.dart';
import 'package:sharedropzone/pages/newdrive.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Share Files",
      theme: ThemeData(
        primaryColor: Colors.lightBlue,
      ),
      home: MySplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
