import 'package:bbs_mobile/Core/BaseState.dart';
import 'package:bbs_mobile/Core/Configurations/Authentication/AuthenticationService.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class App extends BaseStatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _App();
  }
}

class _App extends BaseState<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kanye west"),
        backgroundColor: theme.primary1,
      ),
      body: Center(
        child: Container(
          width: 350,
          child: Row(children: [
            ElevatedButton(
                onPressed: () => {
                      AuthenticationService.signInWithEmailandPassword(
                          "21", "pass")
                    },
                child: Text("Log-in")),
            ElevatedButton(
                onPressed: () => {AuthenticationService.signOut()},
                child: Text("Log-Out")),
            ElevatedButton(onPressed: () => {
               AuthenticationService.createUserWithEmailandPassword("21","password")
            }, child: Text("Register")),
          ]),
        ),
      ),
    );
  }
}
