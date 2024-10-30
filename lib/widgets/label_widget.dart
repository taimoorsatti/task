// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LabelWidget extends StatelessWidget {
  String text;
  FontWeight fontWeight;
  double fontSize;
  Color textColor;
  int maxlines;
  double textHeight;
  TextAlign textAlign;
  TextDecoration decoration;
  TextDirection? textDirection;
  double padding;
  String? fontFamily;

  LabelWidget({
    super.key,
    required this.text,
    required this.fontWeight,
    required this.fontSize,
    required this.textColor,
    this.padding = 4,
    this.fontFamily,
    this.textAlign = TextAlign.start,
    this.textDirection,
    this.decoration = TextDecoration.none,
    this.textHeight = 1.2,
    this.maxlines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding.h),
      child: Text(
        text,
        textAlign: textAlign,
        overflow: TextOverflow.ellipsis,
        softWrap: false,
        maxLines: maxlines,
        textDirection: textDirection,
        style: TextStyle(
          fontFamily: fontFamily ?? GoogleFonts.nunito().fontFamily,
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: textColor,
          height: textHeight.h,
          decorationColor: textColor,
          decorationThickness: 3,
          decoration: decoration,
        ),
      ),
    );
  }
}
