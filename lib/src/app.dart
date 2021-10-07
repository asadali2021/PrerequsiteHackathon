
import 'package:flutter/material.dart';

import 'screens/login.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(secondary: Colors.orange)
      ),
      home: LoginScreen(),
    );
  }
}