

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class LoginScreen extends StatefulWidget {


  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   String _email, _password;
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Center(child: Text('Please Login Or SignUp To News App',style: TextStyle(color: Colors.blue[800]),),),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(hintText: 'Your Email Here...'),
              onChanged: (value) {
                setState(() {
                  _email = value.trim();
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              obscureText: true,
              decoration: const InputDecoration(hintText: 'Your Password Here'),
              onChanged: (value) {
                setState(() {
                  _password = value.trim();
                });
              },
            ),
          ),
          Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                primary: Colors.green,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
                  onPressed: () {
                    auth.signInWithEmailAndPassword(
                        email: _email, password: _password);
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: const Text("Login",)),
              ElevatedButton(style: ElevatedButton.styleFrom(
                primary: Colors.blue[800],
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
                onPressed: () {
                  auth.createUserWithEmailAndPassword(
                      email: _email, password: _password);
                       Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: const Text("Sign Up"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
