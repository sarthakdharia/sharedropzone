import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyAppBar extends AppBar {
  MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        leading: FlutterLogo(),
        title: Text(
          "title",
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
        ]);
  }
}
