import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:task/app/theme/font.dart';

import '../../app/theme/colors.dart';
import '../../utils/appassets.dart';

class AppSnakBar extends StatelessWidget {
  const AppSnakBar({super.key, this.message});

  final String? message;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 40.h,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1.5),
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Image.asset(
              AppAssets.appIconImage,
              height: 20.h,
              width: 20.w,
            ),
            SizedBox(
              width: 240.w,
              child: Column(
                children: [
                  Text(
                    message ?? "abc",
                    style: TextStyle(
                        fontFamily: AppFont.fontFamily,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColor.blackText),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
