import 'package:firebase_auth/firebase_auth.dart';
import 'package:vibez/models/user.dart';
import 'package:vibez/services/database.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user obj based on FirebaseUser
  User _userFromFirebaseUser(FirebaseUser user)
  {
    return user != null ? User(uid: user.uid, email: user.email) : null;
  }

  //auth change user stream
  Stream<User> get user {
    return _auth.onAuthStateChanged
        .map(_userFromFirebaseUser);
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
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);

    } catch (e) {
      print("Sign in failed!");
      print (e.toString());
      return null;
    }
  }

  // register with email and password
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;

      //create a new document for the user with the uid
      await DatabaseService(uid: user.uid).updateUserData(email.split('@')[0], 'User', 0, 0, '', false, 'No bio added yet');
      return _userFromFirebaseUser(user);

    } catch (e) {
      print("Register failed!");
      print (e.toString());
      return null;
    }
  }

  // sign out
  Future signOut() async {
    try {

      return await _auth.signOut();

    } catch(e) {

      print("Sign out failed!");
      print(e.toString());
      return null;
    }
  }
}