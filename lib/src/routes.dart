import 'package:farmapp/src/screens/Login.dart';
import 'package:farmapp/src/screens/Signup.dart';
import 'package:farmapp/src/screens/landing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class Routes {
  static MaterialPageRoute materialRoutes(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => Landing());
      case "/signup":
        return MaterialPageRoute(builder: (context) => Signup());
      case "/login":
        return MaterialPageRoute(builder: (context) => Login());
      default:
        return MaterialPageRoute(builder: (context) => Login());
    }
  }

  static CupertinoPageRoute cupertinoRoutes(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return CupertinoPageRoute(builder: (context) => Landing());
      case "/signup":
        return CupertinoPageRoute(builder: (context) => Signup());
      case "/login":
        return CupertinoPageRoute(builder: (context) => Login());
      default:
        return CupertinoPageRoute(builder: (context) => Login());
    }
  }
}
