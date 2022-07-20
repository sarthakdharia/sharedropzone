import 'package:flutter/material.dart';
import 'package:sharedropzone/widgets/appbar.dart';

class CreateDrive extends StatefulWidget {
  CreateDrive({Key? key}) : super(key: key);

  @override
  State<CreateDrive> createState() => _CreateDriveState();
}

class _CreateDriveState extends State<CreateDrive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: Text('Newww'),
      ),
    );
  }
}
