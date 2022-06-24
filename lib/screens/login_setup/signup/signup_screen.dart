import 'package:flutter/material.dart';
import 'package:project_jh/screens/login_setup/components/background.dart';
import 'package:project_jh/screens/login_setup/components/social_sign_up.dart';
import 'package:project_jh/constants.dart';
import 'package:project_jh/screens/login_setup/signup/components/sign_up_form.dart';
import 'package:project_jh/screens/login_setup/signup/components/sign_up_top_image.dart';
import 'package:project_jh/screens/login_setup/responsive.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Background(
      child: SingleChildScrollView(
        child: Responsive(
          mobile: MobileSignUpScreen(),
          desktop: DesktopSignUpScreen(),
        ),
      ),
    );
  }
}

class DesktopSignUpScreen extends StatelessWidget {
  const DesktopSignUpScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: SignUpScreenTopImage(),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(
                width: 450,
                child: SignUpForm(),
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

class MobileSignUpScreen extends StatelessWidget {
  const MobileSignUpScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SignUpScreenTopImage(),
        Row(
          children: const [
            Spacer(),
            Expanded(
              flex: 8,
              child: SignUpForm(),
            ),
            Spacer(),
          ],
        ),
        const SocialSignUp()
      ],
    );
  }
}
