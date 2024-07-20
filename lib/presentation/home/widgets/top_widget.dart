import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/utils/appassets.dart';

import '../../../app/theme/colors.dart';
import '../../../app/theme/font.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset(
            //   AppAssets.clip1,
            //   height: 98,
            //   width: 98,
            // ),
            Row(
              children: [
                Image.asset(
                  AppAssets.appIconImage,
                  height: 100.h,
                ),
                Text(
                  "VIRTUAL HELP",
                  style: TextStyle(
                    color: AppColor.primaryColor,
                    fontFamily: AppFont.fontFamily,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
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
