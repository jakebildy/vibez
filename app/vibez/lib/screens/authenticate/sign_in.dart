import 'package:flutter/material.dart';
import 'package:vibez/services/auth.dart';



class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();

  // text field state
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: Column(
          children: <Widget>[

            SizedBox(height: 20.0),
            TextField(
                style: new TextStyle(color: Colors.green),
                decoration: new InputDecoration(
                  hintText: "Enter your email",
                  hintStyle: new TextStyle(
                      color: Colors.grey
                  ),
                  labelText: "Email",
                  labelStyle: new TextStyle(
                      color: Colors.white
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.pinkAccent),
                  ),
                ),
                onChanged: (val) {
                  setState(() => email = val);
                }
            ),
            SizedBox(height: 20.0),
            TextField(
                style: new TextStyle(color: Colors.white),
                decoration: new InputDecoration(
                  hintText: "Enter your password",
                  hintStyle: new TextStyle(
                      color: Colors.grey
                  ),
                  labelText: "Password",
                  labelStyle: new TextStyle(
                      color: Colors.white
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.pinkAccent),
                  ),
                ),
                obscureText: true,
                onChanged: (val) {
                  setState(() => password = val);
                }
            ),
            SizedBox(height: 60),
            RaisedButton(
              color: Colors.green,
              child: Text(
                'Register',
                style: new TextStyle(fontSize: 14.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Roboto"),
              ),
              onPressed: () async {

                dynamic result = await _auth.registerWithEmailAndPassword(email, password);
                if (result == null){
                  setState(() => error = 'Please supply a valid email');
                }
              },
            ),
            SizedBox(height: 12, ),
            RaisedButton(
              color: Colors.green,
              child: Text(
                'Sign In',
                style: new TextStyle(fontSize: 14.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Roboto"),
              ),
              onPressed: () async {
                dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                if (result == null){
                  setState(() => error = 'Incorrect email or passord');
                }
              },
            ),
            SizedBox(height: 12, ),
            Text(
              error,
              style: new TextStyle(fontSize: 14.0,
                  color: Colors.red,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Roboto"),
            ),
          ],
        ),
      ),

    );
  }
}
