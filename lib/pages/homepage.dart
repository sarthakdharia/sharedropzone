import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sharedropzone/pages/newdrive.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            shadowColor: Colors.black,
            leading: Image.asset(
              'images/cloud.png',
              scale: 3,
            ),
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
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/cloud.png',
                  scale: 5,
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    // controller: DriveController,
                    cursorHeight: 20,
                    autofocus: false,
                    decoration: InputDecoration(
                      labelText: '  Enter your Drive Name  ',
                      hintText: "Drive Name",
                      prefixIcon: Icon(Icons.star),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.grey, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.grey, width: 1.5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        gapPadding: 0.0,
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.cyan, width: 1.5),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    // controller: DriveController,
                    cursorHeight: 20,
                    autofocus: false,
                    decoration: InputDecoration(
                      labelText: '  Enter your Drive Password  ',
                      hintText: "Password",
                      prefixIcon: Icon(Icons.password),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.grey, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.grey, width: 1.5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        gapPadding: 0.0,
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.cyan, width: 1.5),
                      ),
                    ),
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
                        Get.to(() => CreateDrive());
                      },
                      child: Text('Join Drive')),
                ),
              ],
            ),
          ),
        ));
  }
}
