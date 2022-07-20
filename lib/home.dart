import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sharedropzone/pages/homepage.dart';
import 'package:sharedropzone/pages/newdrive.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

List Pages = [
  HomePage(),
  CreateDrive(),
];

class _HomeState extends State<Home> {
  var dv = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.black,
          leading: FlutterLogo(),
          title: Text(
            'Share Your Files',
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
      body: Pages[dv],
    );
  }
}
