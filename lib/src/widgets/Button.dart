import 'package:farmapp/src/styles/basestyles.dart';
import 'package:farmapp/src/styles/buttons.dart';
import 'package:farmapp/src/styles/colors.dart';
import 'package:farmapp/src/styles/text.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String buttonText;
  final ButtonType buttonType;

  AppButton({
    @required this.buttonText,
    this.buttonType,
  });

  @override
  Widget build(BuildContext context) {
    TextStyle fontStyle;
    Color buttonColor;

    switch (buttonType) {
      case ButtonType.Straw:
        fontStyle = TextStyles.buttonTextLight;
        buttonColor = AppColors.straw;
        break;
      case ButtonType.LightBlue:
        fontStyle = TextStyles.buttonTextLight;
        buttonColor = AppColors.lightblue;
        break;
      case ButtonType.DarkBlue:
        fontStyle = TextStyles.buttonTextLight;
        buttonColor = AppColors.darkblue;
        break;
      case ButtonType.LightGray:
        fontStyle = TextStyles.buttonTextLight;
        buttonColor = AppColors.lightgray;
        break;
      case ButtonType.DarkGray:
        fontStyle = TextStyles.buttonTextLight;
        buttonColor = AppColors.darkgray;
        break;

      default:
        fontStyle = TextStyles.buttonTextLight;
        buttonColor = AppColors.lightblue;
    }

    return Padding(
      padding: BaseStyle.listPadding,
      child: Container(
        height: ButtonStyles.doubleHeight,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(BaseStyle.borderRadius),
          boxShadow: BaseStyle.boxShadow,
        ),
        child: Center(
            child: Text(
          buttonText,
          style: fontStyle,
        )),
      ),
    );
  }
}

enum ButtonType { LightBlue, Straw, LightGray, DarkGray, DarkBlue }
