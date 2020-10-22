import 'dart:io';

import 'package:farmapp/src/styles/textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final bool isIOS;
  final String hintText;
  final IconData matetialIcon;
  final IconData cupertinoIcon;
  final TextInputType textInputType;
  final bool obscureText;

  AppTextField({
    @required this.isIOS,
    @required this.hintText,
    @required this.matetialIcon,
    @required this.cupertinoIcon,
    this.obscureText,
    this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: TextFieldStyles.textBoxHorizontal,
            vertical: TextFieldStyles.textBoxVertical),
        child: CupertinoTextField(
          keyboardType:
              (textInputType != null) ? textInputType : TextInputType.text,
          padding: EdgeInsets.all(12.0),
          placeholder: hintText,
          placeholderStyle: TextFieldStyles.placeholder,
          style: TextFieldStyles.text,
          textAlign: TextFieldStyles.textAlign,
          cursorColor: TextFieldStyles.cursorColor,
          decoration: TextFieldStyles.cupertinoDecoration(),
          prefix: TextFieldStyles.iconPrefix(cupertinoIcon),
          obscureText: (obscureText != null) ? obscureText : false,
        ),
      );
    } else {
      return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: TextFieldStyles.textBoxHorizontal,
            vertical: TextFieldStyles.textBoxVertical),
        child: TextField(
          keyboardType:
              (textInputType != null) ? textInputType : TextInputType.text,
          cursorColor: TextFieldStyles.cursorColor,
          style: TextFieldStyles.text,
          textAlign: TextFieldStyles.textAlign,
          decoration:
              TextFieldStyles.materialDecoration(hintText, matetialIcon),
          obscureText: (obscureText != null) ? obscureText : false,
        ),
      );
    }
  }
}
