import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../app/theme/colors.dart';
import '../../../../../app/theme/font.dart';
import '../../../../../utils/appassets.dart';

class TeacherTopWidgetSignUp extends StatelessWidget {
  const TeacherTopWidgetSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset(
            //   AppAssets.clip1,
            //   height: 98,
            //   width: 98,
            // ),

            Column(
              children: [
                Image.asset(
                  AppAssets.appIconImage,
                  height: 132.h,
                  width: 146.w,
                ),
                SizedBox(
                  height: 0.h,
                ),
                Text(
                  "Sign up as Teacher".toUpperCase(),
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
            ),

            // Image.asset(
            //   AppAssets.clipBlue,
            //   height: 162,
            //   width: 162,
            // ),
          ],
        )
      ],
    );
  }
}
