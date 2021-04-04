import 'package:bbs_mobile/Core/Configurations/Authentication/AuthenticationService.dart';
import 'package:bbs_mobile/Core/Configurations/Theme/ThemeConfig.dart';
import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";

class BaseStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BaseState();
  }
}

class BaseState<T extends BaseStatefulWidget> extends State<T> {

  String username = "chandru";
  bool isLoggedIn = false;
  CustomTheme theme = ThemeConfig.getDarkTheme();

  void authStream() {
    AuthenticationService.auth.authStateChanges().listen((User user) {
      if (user == null) {
        setState(() {
          isLoggedIn = false;
        });
      } else {
        setState(() {
          isLoggedIn = true;
        });
      }
    });
  }    

  @override
  void initState() {
    authStream();
    super.initState();
  }

  void switchToDark() {
    setState(() => {theme = ThemeConfig.getDarkTheme()});
  }

  void switchToLight() {
    setState(() => {theme = ThemeConfig.getLightTheme()});
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
