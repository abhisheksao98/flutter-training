import 'package:brave_quiz/forms/authentication_service_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants.dart';

class SelfDrawersHeader extends StatelessWidget {
  const SelfDrawersHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthenticationServiceController controller =
        Get.put(AuthenticationServiceController());
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
        gradient: LinearGradient(
          colors: drawersHeaderGradientColor,
        ),
      ),
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            height: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                  'https://w7.pngwing.com/pngs/841/727/png-transparent-computer-icons-user-profile-synonyms-and-antonyms-android-android-computer-wallpaper-monochrome-sphere.png',
                ),
              ),
            ),
          ),
          Text(
            '${controller.currentUserData.email}',
            // 'kjhakjdh',
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
          Text(
            'Your are a bad person',
            style: TextStyle(color: Colors.grey[200], fontSize: 13),
          ),
        ],
      ),
    );
  }
}
