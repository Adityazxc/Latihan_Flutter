import 'package:flutter/material.dart';
import 'package:profile/profile.dart';
import 'package:project_flutter/View/pages/profile.dart';

class language extends StatelessWidget {
  const language({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bahasa"),
        ),
        body: Center(
          child: Text("Ini halaman Bahasa"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return AdminPage();
            }));
          },
          child: Icon(Icons.logout),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      ),
    );
  }
}
