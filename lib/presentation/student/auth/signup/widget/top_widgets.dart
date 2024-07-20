import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../app/theme/colors.dart';
import '../../../../../app/theme/font.dart';
import '../../../../../utils/appassets.dart';

class StudentTopWidgetSignUp extends StatelessWidget {
  const StudentTopWidgetSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AppAssets.appIconImage,
          height: 142.h,
          width: 156.w,
        ),

        Text(
          "Sign up as Student".toUpperCase(),
          style: TextStyle(
            color: AppColor.primaryColor,
            fontFamily: AppFont.fontFamily,
            fontSize: 26.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 0.h,
        ),
        Text(
          "please fill the details",
          style: TextStyle(
            color: AppColor.greyLight,
            fontFamily: AppFont.fontFamily,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
