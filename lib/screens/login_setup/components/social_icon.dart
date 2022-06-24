import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_jh/constants.dart';

class SocialIcon extends StatelessWidget {
  final String? iconsrc;
  final Function? press;
  const SocialIcon({
    Key? key,
    this.iconsrc,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: press as void Function()?,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: kPrimaryLightColor,
          ),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconsrc!,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}
