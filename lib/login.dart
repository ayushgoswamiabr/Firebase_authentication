import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_authentication/home.dart';
import 'package:flutter_firebase_authentication/shopping.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _email, _password;
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 90,
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(
                    "https://www.seekpng.com/png/full/138-1387775_login-to-do-whatever-you-want-login-icon.png"),
              ),
            ),
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic),
                )),
            Container(
              alignment: Alignment.center,
              padding:
                  EdgeInsets.only(top: 50, right: 10, left: 10, bottom: 50),
              child: TextField(
                readOnly: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                    helperText: "Enter Email",
                    icon: Icon(Icons.account_circle)),
                onChanged: (value) {
                  setState(() {
                    _email = value.trim();
                  });
                },
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding:
                  EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 10),
              child: TextField(
                obscureText: true,
                readOnly: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    helperText: "Enter Password(Should be of 6 Characters)",
                    icon: Icon(Icons.lock)),
                onChanged: (value) {
                  setState(() {
                    _password = value.trim();
                  });
                },
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 90,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    color: Theme.of(context).accentColor,
                    onPressed: () {
                      auth.signInWithEmailAndPassword(
                          email: _email, password: _password);
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ShoppingPage()));
                    },
                    child: Text("Sign in"),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                RaisedButton(
                  onPressed: () {
                    auth.createUserWithEmailAndPassword(
                        email: _email, password: _password);
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Text("Sign up"),
                  color: Theme.of(context).accentColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
