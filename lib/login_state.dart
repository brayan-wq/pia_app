import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';

class LoginState with ChangeNotifier {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  bool _loggedin = false;

  bool isLoggedIn() => _loggedin;
  void login() async {
    var user = await _handleSignIn();

    if (user != null) {
      _loggedin = true;
      notifyListeners();
    } else {
      _loggedin = false;
      notifyListeners();
    }
  }

  void logout() {
    _loggedin = false;
    notifyListeners();
  }

  Future<FirebaseUser> _handleSignIn() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
        idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);

    final FirebaseUser user = await _auth.signInWithCredential(credential);
    print("signed in" + user.displayName);
    return user;
  }
}
