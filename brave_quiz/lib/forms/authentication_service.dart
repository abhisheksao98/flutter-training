import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class UserAuthenticationService {
  final FirebaseAuth _firebaseAuth;

  UserAuthenticationService(this._firebaseAuth);
  //check user auth or not
  get userAuthStatusChanges => _firebaseAuth.authStateChanges();

  get currentUserData => _firebaseAuth.currentUser;

//current user login update name
  Future<void> updateUserName(String name) async {
    await userAuthStatusChanges.updateDisplayName(name);
  }

//current user login update password must be recently login user
  Future<void> updateUserPassword(String name) async {
    await userAuthStatusChanges.updatePassword(name);
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  Future<dynamic> signUp(
      {required String email,
      required String password,
      required String mobile}) async {
    try {
      await _firebaseAuth
          .createUserWithEmailAndPassword(
        email: email,
        password: password,
      )
          .then((value) {
        FirebaseFirestore.instance
            .collection('userData')
            .doc(value.user!.uid)
            .set({
          'email': value.user!.email,
          'mobile': mobile,
          'dob': '',
          'creditoint': ''
        }).then((value) =>
                Get.snackbar('Success', 'Account created succesfully!'));
      });

      return 'true';
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        return 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        return 'The account already exists for that email.';
      }
    } catch (e) {
      print(e);
      return '$e';
    }
  }

  Future<dynamic> signIn(
      {required String email, required String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return 'true';
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        return 'No user found for that email.';
        // Get.snackbar('Error', 'No user found for that email');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        return 'Wrong password provided for that user.';
      } else if (e.code == 'invalid-email') {
        print('The email address is badly formatted.');
        return 'The email address is badly formatted.';
      }
      // return false;
    }
  }
}
