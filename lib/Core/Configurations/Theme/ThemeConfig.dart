import 'package:flutter/cupertino.dart';

class CustomTheme {
  final Color primary1;
  final Color primary2;
  final Color secondry1;
  final Color secondry2;

  CustomTheme(Color p1, Color p2, Color s1, Color s2)
      : assert(p1 != null),
        assert(p1 != null),
        assert(p1 != null),
        assert(p1 != null),
        this.primary1 = p1,
        this.primary2 = p2,
        this.secondry1 = s1,
        this.secondry2 = s2;
}

class ThemeConfig {
  static const Color PRIMARY1 = Color(0xffb74093);
  static const Color PRIMARY2 = Color(0xffb79093);
  static const Color SECONDRY1 = Color(0xffe74093);
  static const Color SECONDRY2 = Color(0xff874093);

  static const Color PRIMARYDARK1 = Color(0xffb70003);
  static const Color PRIMARYDARK2 = Color(0xffb79093);
  static const Color SECONDRYDARK1 = Color(0xffe74093);
  static const Color SECONDRYDARK2 = Color(0xff874093);

  static CustomTheme getLightTheme() {
    return CustomTheme(PRIMARY1, PRIMARY2, SECONDRY1, SECONDRY2);
  }

  static CustomTheme getDarkTheme() {
    return CustomTheme(
        PRIMARYDARK1, PRIMARYDARK2, SECONDRYDARK1, SECONDRYDARK2);
  }
}
