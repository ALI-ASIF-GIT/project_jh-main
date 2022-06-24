import 'package:flutter/material.dart';
import 'package:project_jh/screens/login_setup/components/background.dart';
import 'package:project_jh/screens/login_setup/components/social_sign_up.dart';
import 'package:project_jh/constants.dart';
import 'package:project_jh/screens/login_setup/welcome/components/login_signup_btn.dart';
import 'package:project_jh/screens/login_setup/welcome/components/welcome_image.dart';
import 'package:project_jh/screens/login_setup/responsive.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Background(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Responsive(
            desktop: DesktopWelcomeScreen(),
            mobile: MobileWelcomeScreen(),
          ),
        ),
      ),
    );
  }
}

class DesktopWelcomeScreen extends StatelessWidget {
  const DesktopWelcomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Expanded(
          child: WelcomeImage(),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(
                width: 450,
                child: LoginSignupBtn(),
              ),
              SizedBox(
                height: kDefaultPaddin / 2,
              ),
              SocialSignUp(),
            ],
          ),
        ),
      ],
    );
  }
}

class MobileWelcomeScreen extends StatelessWidget {
  const MobileWelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const WelcomeImage(),
        Row(
          children: const [
            Spacer(),
            Expanded(flex: 8, child: LoginSignupBtn()),
            Spacer(),
          ],
        ),
        const SocialSignUp(),
      ],
    );
  }
}
