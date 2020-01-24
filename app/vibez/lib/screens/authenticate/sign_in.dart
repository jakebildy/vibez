import 'package:flutter/material.dart';
import 'package:vibez/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: RaisedButton (
          child: Text('Sign In Anonymously'),
          onPressed: () async {

            dynamic result = await _auth.signInAnon();

            if (result == null){
              print('Error signing in');
            }
            else {
              print('Signed in');
              print(result.uid);
            }
          }
        )
      ),

    );
  }
}
