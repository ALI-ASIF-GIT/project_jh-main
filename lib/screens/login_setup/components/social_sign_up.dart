// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:project_jh/screens/login_setup/components/social_icon.dart';
import 'package:project_jh/screens/login_setup/components/or_divider.dart';
import 'package:project_jh/screens/home/home_screen.dart';
import 'package:project_jh/screens/phone_number_screen.dart';
import 'package:project_jh/services/firebase_services.dart';
class SocialSignUp extends StatelessWidget {
  const SocialSignUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const OrDivider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SocialIcon(
              iconsrc: "assets/icons/facebook.svg",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const HomeScreen();
                    },
                  ),
                );
              },
            ),
            SocialIcon(
              iconsrc: "assets/icons/phone.svg",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const PhoneNumberScreen();
                    },
                  ),
                );
              },
            ),
            SocialIcon(
              iconsrc: "assets/icons/google.svg",
              press: () async {
                await FirebaseServices().signInWithGoogle();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const HomeScreen();
                    },
                  ),
                );
              },
            )
          ],
        )
      ],
    );
  }
}
