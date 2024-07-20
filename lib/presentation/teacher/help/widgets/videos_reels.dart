import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/app/theme/colors.dart';
import 'package:task/app/theme/font.dart';
import 'package:task/models/teacher/teacher_model.dart';
import 'package:task/utils/appassets.dart';

class VideoReelsWidget extends StatelessWidget {
  HelpModel? model;
  VideoReelsWidget({super.key, this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.w, right: 8.w),
      child: Column(
        children: [
          Container(
            width: 100.w,
            height: 123.h,
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
                    borderRadius: BorderRadius.circular(10.0.r),
                    child: Image.asset(
                      model!.imgae!,
                      width: 65.w,
                      height: 65.h,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  model!.name!,
                  style: TextStyle(
                      fontSize: 8.sp,
                      color: AppColor.blackText,
                      fontFamily: AppFont.fontFamily,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          SizedBox(height: 3.h,),
        ],
      ),
    );
  }
}
