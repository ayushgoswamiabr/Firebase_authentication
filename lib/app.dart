import 'package:flutter/material.dart';
import 'package:flutter_firebase_authentication/login.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme:
          ThemeData(accentColor: Colors.blueAccent, primarySwatch: Colors.blue),
      home: LoginScreen(),
    );
  }
}
