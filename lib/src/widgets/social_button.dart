import 'package:farmapp/src/styles/basestyles.dart';
import 'package:farmapp/src/styles/buttons.dart';
import 'package:farmapp/src/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppSocialButton extends StatelessWidget {
  final SocialType socialType;

  AppSocialButton({@required this.socialType});

  @override
  Widget build(BuildContext context) {
    Color buttonColor;
    Color iconColor;
    IconData icon;

    switch (socialType) {
      case SocialType.Facebook:
        iconColor = Colors.white;
        buttonColor = AppColors.facebook;
        icon = FontAwesomeIcons.facebookF;
        break;

      case SocialType.Google:
        iconColor = Colors.white;
        buttonColor = AppColors.google;
        icon = FontAwesomeIcons.google;
        break;

      default:
        iconColor = Colors.white;
        buttonColor = AppColors.facebook;
        icon = FontAwesomeIcons.facebookF;
    }

    return Container(
      height: ButtonStyles.doubleHeight,
      width: ButtonStyles.doubleHeight,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(BaseStyle.borderRadius),
        boxShadow: BaseStyle.boxShadow,
      ),
      child: Icon(icon, color: iconColor),
    );
  }
}

enum SocialType { Facebook, Google }
