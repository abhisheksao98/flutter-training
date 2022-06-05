import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:quiz_app/authentication_service.dart';

class AuthenticationController extends GetxController {
  final UserAuthenticationService userauth =
      UserAuthenticationService(FirebaseAuth.instance);

  Future<dynamic> registeruser(String email, String password) async {
    var result = await userauth.Register(email: email, password: password);
    return result;
  }

  Future<dynamic> Signin(String email, String password) async {
    var result = await userauth.Signin(email: email, password: password);
    return result;
  }

  void logout() {
    userauth.signout();
  }
}
