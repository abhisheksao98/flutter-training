import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:quiz_app/demofirebase_login.dart';

class UserAuthenticationService {
  final FirebaseAuth _firebaseAuth;
  UserAuthenticationService(this._firebaseAuth);

  get userAuthenticationStatus => _firebaseAuth.authStateChanges();

  Future<void> signout() async {
    await _firebaseAuth.signOut();
  }

  Future<dynamic> Register(
      {required String email, required String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return 'true';
    } on FirebaseException catch (e) {
      if (e.code == 'weak Password') {
        print('password error');
        return ' Password is too weak';
      } else if (e.code == 'email already in use') {
        print('emal error');
        return 'Email is already in use';
      }
      return 'undefined error';
    } catch (e) {
      print(e);
      return '$e';
    }
  }

  Future<dynamic> Signin(
      {required String email, required String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        return 'Wrong password provided for that user.';
      }
    }
  }
}
