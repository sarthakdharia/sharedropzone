import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CreateDrive extends StatefulWidget {
  CreateDrive({Key? key}) : super(key: key);

  @override
  State<CreateDrive> createState() => _CreateDriveState();
}

class _CreateDriveState extends State<CreateDrive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.black,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            'Create New File Here',
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.all(10),
              child: GestureDetector(
                onTap: () async {
                  Uri url = Uri.parse(
                      'https://sites.google.com/view/sarthak-dharia/home');
                  if (await canLaunchUrl(url)) {
                    launchUrl(url);
                  }
                },
                child: Icon(
                  Icons.contact_mail,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: GestureDetector(
                onTap: () async {
                  Uri url = Uri.parse('https://github.com/sarthakdharia');
                  if (await canLaunchUrl(url)) {
                    launchUrl(url);
                  }
                },
                child: Icon(Icons.code_rounded,
                    color: Theme.of(context).primaryColor),
              ),
            ),
          ]),
      body: Center(
        child: Text('Newww'),
      ),
    );
  }
}
