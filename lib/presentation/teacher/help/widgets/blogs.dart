import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task/controllers/teacher/help_controller.dart';
import 'package:task/models/teacher/teacher_model.dart';

import '../../../../app/theme/colors.dart';
import '../../../../app/theme/font.dart';
import '../../../../utils/appassets.dart';

class BlogsWidget extends StatelessWidget {
  HelpModel ?model;
   BlogsWidget({super.key,this.model});

  @override
  Widget build(BuildContext context) {
     return Padding(
      padding: EdgeInsets.only(left: 8.w, right: 8.w),
      child: Container(
        height: 123.h,
        width: 105.w,
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: ClipRRect(
                borderRadius:
                BorderRadius.circular(10.0.r),
                child: Image.asset(
                  model!.imgae!,
                  width: 65.w,
                  height: 65.h,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 10.h,),
            Text(
            model!.name!,
              style: TextStyle(
                  fontSize:8.sp,
                  color: AppColor.blackText,
                  fontFamily: AppFont.fontFamily,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );;
  }
}
