import 'package:farmapp/src/routes.dart';
import 'package:farmapp/src/screens/Login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatFormApp();
  }
}

class PlatFormApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoApp(
        home: Login(),
        onGenerateRoute: Routes.cupertinoRoutes,
        theme: CupertinoThemeData(scaffoldBackgroundColor: Colors.white),
      );
    } else {
      return MaterialApp(
        home: Login(),
        onGenerateRoute: Routes.materialRoutes,
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      );
    }
  }
}
