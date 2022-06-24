import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_jh/constants.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Welcome to Project JH",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: kDefaultPaddin * 2,
        ),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: SvgPicture.asset("assets/icons/chat.svg"),
            ),
            const Spacer(),
          ],
        ),
        const SizedBox(
          height: kDefaultPaddin * 2,
        ),
      ],
    );
  }
}
