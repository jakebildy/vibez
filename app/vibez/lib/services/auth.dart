import 'package:firebase_auth/firebase_auth.dart';
import 'package:vibez/models/user.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user obj based on FirebaseUser
  User _userFromFirebaseUser(FirebaseUser user)
  {
    return user != null ? User(uid: user.uid) : null;
  }

  // sign in anonymously
  Future signInAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;

      return _userFromFirebaseUser(user);

    } catch (e) {
      print("Anonymous sign-in failed!");
      print (e.toString());
      return null;
    }
  }

  // sign in with email and password


  // register with email and password


  // sign out

}