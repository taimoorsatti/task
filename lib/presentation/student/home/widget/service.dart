import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/theme/colors.dart';
import '../../../../app/theme/font.dart';
import '../../../../models/teacher/teacher_model.dart';

class ServiceHome extends StatelessWidget {
  HelpModel? model;
  ServiceHome({super.key,this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 15.0.w),
          child: Container(
            width: 80.w,
            height: 80.h,
            decoration: BoxDecoration(
              color: AppColor.whiteColor,
              borderRadius: BorderRadius.circular(50.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0.r),
                child: Image.asset(
                  model!.imgae!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10.h,),
        Text(
          model!.name!,
          style: TextStyle(
              fontSize:12.sp,
              color: AppColor.blackText,
              fontFamily: AppFont.fontFamily,
              fontWeight: FontWeight.w500),
        ),

      ],
    );
  }
}
