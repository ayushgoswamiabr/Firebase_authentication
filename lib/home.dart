import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up Page"),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              "User Created Succesfully",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          FlatButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Back to Login Screen"))
        ],
      ),
    );
  }
}

class Signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              "Login Succesful",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
