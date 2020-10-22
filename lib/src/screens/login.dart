import 'dart:io';

import 'package:farmapp/src/styles/basestyles.dart';
import 'package:farmapp/src/styles/text.dart';
import 'package:farmapp/src/widgets/Button.dart';
import 'package:farmapp/src/widgets/social_button.dart';
import 'package:farmapp/src/widgets/textfields.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoPageScaffold(
        child: pageBody(context),
      );
    } else {
      return Scaffold(
        body: pageBody(context),
      );
    }
  }

  Widget pageBody(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(0),
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * .2,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/top_bg.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          height: 200.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/logo.png'),
            ),
          ),
        ),
        AppTextField(
          isIOS: Platform.isIOS,
          hintText: 'Email',
          cupertinoIcon: CupertinoIcons.mail_solid,
          matetialIcon: Icons.email,
          textInputType: TextInputType.emailAddress,
        ),
        AppTextField(
          isIOS: Platform.isIOS,
          hintText: 'Password',
          cupertinoIcon: IconData(
            0xf4c9,
            fontFamily: CupertinoIcons.iconFont,
            fontPackage: CupertinoIcons.iconFontPackage,
          ),
          matetialIcon: Icons.lock,
          obscureText: true,
        ),
        AppButton(
          buttonText: "Login",
          buttonType: ButtonType.DarkBlue,
        ),
        SizedBox(height: 6.0),
        Center(child: Text('or', style: TextStyles.suggestion)),
        SizedBox(height: 6.0),
        Padding(
          padding: BaseStyle.listPadding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AppSocialButton(socialType: SocialType.Facebook),
              SizedBox(width: 20),
              AppSocialButton(socialType: SocialType.Google),
            ],
          ),
        ),
        Padding(
          padding: BaseStyle.listPadding,
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'New Here? ',
              style: TextStyles.body,
              children: [
                TextSpan(
                  text: 'Sign Up',
                  style: TextStyles.link,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Navigator.pushNamed(context, '/signup'),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
