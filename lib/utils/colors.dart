import 'package:flutter/material.dart';

class AlphaColors {
  static final AlphaColors _sharedInstance = AlphaColors._internal();

  factory AlphaColors() {
    return _sharedInstance;
  }
  AlphaColors._internal();

  Color backgroundColor = const Color(0xFFF2F4F7); //#F2F4F7
  Color gray = const Color(0xFFE3E5E8); //#E3E5E8
  Color black = Colors.black;
  Color grayNew = const Color(0xFFE3E5E8); //#E3E5E8
  Color grayLight = const Color(0xFEE8EAED); //#E8EAED
  Color basicTextNew = const Color(0xFF28263B); //#28263B
  Color secTextNew = const Color(0xFF1A1926); //#1A1926
  Color thirdTextNew = const Color(0xFF637085); //#637085
  Color darkTextNew = const Color(0xFF28263B); //#28263B
  Color chatNormalTextNew = const Color(0xFF637085); //#637085
  Color redColor = const Color(0xFFFF6640); //#FF6640
  Color selectedTextNew = const Color(0xFF2D99FF); //#2D99FF
  Color accentColor = const Color(0xFF1A8EFF); //#1A8EFF
  Color unSelectedChatPinnedColor = const Color(0xFFF5F7FA); //#F5F7FA
  Color background = const Color(0xFFF6F8FA); //E5E5E5
  Color white = const Color.fromRGBO(255, 255, 255, 1);
  Color blueColor = const Color(0xFF008EF0);
  Color purpul = const Color(0xFF4A5A9E);
}
