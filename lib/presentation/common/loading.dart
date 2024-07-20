import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../app/theme/colors.dart';

class CustomDialog extends StatelessWidget {
  final Color backgroundColor;
  final Color color;

  CustomDialog({
     required this.color,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 60.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color:backgroundColor,
      ),
      child: LoadingAnimationWidget
          .threeArchedCircle(
        color: color,
        size: 35.sp,
      ),
    );
  }
}