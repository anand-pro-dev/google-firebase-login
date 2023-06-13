import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomePage extends StatelessWidget {
  final String title;
  const HomePage({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(
              onPressed: () async {
                GoogleSignIn().signOut();
                FirebaseAuth.instance.signOut();
              },
              icon: Icon(Icons.power_off_outlined))
        ],
      ),
      body: Center(
        child: Text("Home Page"),
      ),
    );
  }
}
