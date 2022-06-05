import 'package:brave_quiz/forms/sign_in_screen.dart';
import 'package:brave_quiz/homescreen/drawers/fregments/user_profile.dart';
import 'package:flutter/material.dart';

import '../../forms/authentication_service_controllers.dart';
import 'components/self_drawer_header.dart';
import 'package:get/get.dart';

class DrawersNav extends StatelessWidget {
  const DrawersNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthenticationServiceController controller =
        Get.put(AuthenticationServiceController());
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SelfDrawersHeader(),
            const Divider(thickness: 1.2),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                Get.to(() => UserProfileScreen());
              },
            ),
            const Divider(thickness: 1.2),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Sign Out'),
              onTap: () {
                controller.logout();

                Get.to(() => SignInPage());
              },
            )
          ],
        ),
      ),
    );
  }
}
