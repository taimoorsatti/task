import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../app/theme/colors.dart';
import '../../../../../app/theme/font.dart';
import '../../../../../utils/appassets.dart';

class TopWidgetLoginTeacher extends StatelessWidget {
  const TopWidgetLoginTeacher({super.key});

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
                  height: 5.h,
                ),
                Container(
                  child: Text(
                    "SIGN IN AS A TEACHER",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColor.primaryColor,
                      fontFamily: AppFont.fontFamily,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
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
