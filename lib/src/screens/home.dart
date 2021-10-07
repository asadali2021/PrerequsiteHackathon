 

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/src/screens/homecontent.dart';

// ignore: import_of_legacy_library_into_null_safe
import 'login.dart';
class HomeScreen extends StatelessWidget {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "THE NEWS APP",
              style: TextStyle(
                  color: Colors.blue[800],
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            IconButton(icon: const Icon(Icons.search), onPressed: (){},color: Colors.blue[900],),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.red[800],
                    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                    textStyle:
                        const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () {
                  auth.signOut();
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: const Text('Logout')),
          ],
        ),
        
        backgroundColor: Colors.white,
        elevation: 20,
        titleSpacing: 0,
      ),
      body: const HomeContent(),
    );
  }
}
