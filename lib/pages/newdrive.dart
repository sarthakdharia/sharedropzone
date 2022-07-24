import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CreateDrive extends StatefulWidget {
  CreateDrive({Key? key}) : super(key: key);

  @override
  State<CreateDrive> createState() => _CreateDriveState();
}

class _CreateDriveState extends State<CreateDrive> {
  late Future<ListResult> futureFiles;
  @override
  void initState() {
    super.initState();

    futureFiles = FirebaseStorage.instance.ref('/test').listAll();
  }

  Widget build(BuildContext context) => Scaffold(
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
      body: FutureBuilder<ListResult>(
        future: futureFiles,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final files = snapshot.data!.items;
            return ListView.builder(
              itemCount: files.length,
              itemBuilder: (context, index) {
                final file = files[index];
                return ListTile(
                  title: Text(file.name),
                  trailing: IconButton(
                    icon: const Icon(
                      Icons.download,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('Error occured'),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ));
}
