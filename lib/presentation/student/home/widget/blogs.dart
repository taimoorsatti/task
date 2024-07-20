import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/utils/appassets.dart';

import '../../../../app/theme/colors.dart';
import '../../../../app/theme/font.dart';
import '../../../../models/teacher/teacher_model.dart';

class HomeBlogs extends StatelessWidget {
  HelpModel? model;
  HomeBlogs({super.key,this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 15.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(

            width: 280.w,
            height: 151.h,
            decoration: BoxDecoration(
              color: AppColor.blackText,
              borderRadius: BorderRadius.circular(150.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: const Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0.r),
              child: Image.asset(
                model!.imgae!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text(
            model!.name!,
            style: TextStyle(
                fontSize:12.sp,
                color: AppColor.blackText,
                fontFamily: AppFont.fontFamily,
                fontWeight: FontWeight.w500),
          ),
          // SizedBox(height: 10.h,),
          // Image.asset(
          //   AppAssets.ratting!,
          //   fit: BoxFit.cover,
          //   height: 12.h,
          //),

        ],
      ),
    );
  }
}
