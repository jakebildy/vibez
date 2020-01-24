import 'package:flutter/material.dart';
import 'package:vibez/screens/profile.dart';
import 'package:vibez/screens/authenticate/authenticate.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //return either Profile or Authenticate widget
    return Authenticate();
  }
}
