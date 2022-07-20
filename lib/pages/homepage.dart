import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sharedropzone/pages/newdrive.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 260,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => CreateDrive());
                },
                child: Text('Create New Drive'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 260,
              height: 40,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                  child: Text('Join Drive')),
            ),
          ],
        ),
      ),
    );
  }
}
