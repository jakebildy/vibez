import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vibez/models/user.dart';
import 'package:vibez/screens/profile.dart';
import 'package:vibez/screens/authenticate/authenticate.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    print(user);

    //return either Profile or Authenticate widget
    if (user == null) {
      return Authenticate();
    }
    else {
      return ProfileWidget();
    }
  }
}
