import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/app/theme/colors.dart';

import '../../../../app/theme/font.dart';

class ListWidgetSetting extends StatelessWidget {
  final String? image;
  final String? name;
  final Function()? onTap;
  final String? text;


  ListWidgetSetting({super.key, this.text, this.image, this.name,this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0.w),
      child: InkWell(
        onTap:onTap,
        child: Row(
          children: [
            Container(
              height: 50.h,
              width: 50.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppColor.textFieldBackGroundColor),
              child: Center(
                child: Image.asset(
                  image.toString(),
                  height: 25.h,
                  width: 25.w,
                ),
              ),
            ),
            SizedBox(
              width: 10.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name ?? "",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: AppFont.fontFamily,
                      color: AppColor.blackText,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  text ?? "",
                  style: TextStyle(
                      fontSize: 13.sp,
                      fontFamily: AppFont.fontFamily,
                      color: AppColor.greyLight.withOpacity(0.7),
                      fontWeight: FontWeight.w500),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
