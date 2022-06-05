import 'package:brave_quiz/forms/authentication_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:get/get.dart';

class AuthenticationServiceController extends GetxController {
  UserAuthenticationService authService =
      UserAuthenticationService(FirebaseAuth.instance);

  Future<dynamic> registerUser({
    required String emailAddress,
    required String mobile,
    required String password,
  }) async {
    return await authService.signUp(
        email: emailAddress, password: password, mobile: mobile);
  }

  Future<dynamic> validateUser(String emailAddress, String password) async {
    return await authService.signIn(email: emailAddress, password: password);
  }

  // if user in not't login than return null
  get currentAuthUserData => authService.userAuthStatusChanges;

  get currentUserData => authService.currentUserData;

  Future<void> updateUserFullName(String name) async {
    await authService.updateUserName(name);
    update();
  }

  Future<void> updateUserOldPassword(String name) async {
    await authService.updateUserPassword(name);
    update();
  }

  // for deleting the current user from the Firebase
  Future<void> deleteAccout() async {
    await currentAuthUserData.delete();
  }

  void logout() {
    authService.userAuthStatusChanges == null
        ? Get.snackbar('Error', 'No one LogIn')
        : authService.signOut();
  }
}
