import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/app/theme/colors.dart';
import 'package:task/app/theme/font.dart';
import 'package:task/utils/appassets.dart';

class DeadlineDateTimeWidget extends StatelessWidget {
  const DeadlineDateTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),

          child: Text(
            "Deadline",
            style: TextStyle(
              color: AppColor.blackText,
              fontFamily: AppFont.fontFamily,
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(height: 5.h,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Container(
            decoration: BoxDecoration(

              color: AppColor.whiteColor,
              borderRadius: BorderRadius.circular(15.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],

            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(
                          "Date",
                          style: TextStyle(
                            color: AppColor.blackText,
                            fontFamily: AppFont.fontFamily,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Container(
                        height: 42.h,
                        decoration: BoxDecoration(
                          color: AppColor.textFieldBackGroundColor,
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0.sp),
                            child: Row(
                              children: [
                                Text(
                                  "mm/dd/yyyy",
                                  style: TextStyle(
                                    color: AppColor.blackText,
                                    fontFamily: AppFont.fontFamily,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Image.asset(
                                  AppAssets.calenderIcon,
                                  height: 17.h,
                                  width: 17.w,
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 50.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(
                          "Time",
                          style: TextStyle(
                            color: AppColor.blackText,
                            fontFamily: AppFont.fontFamily,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Container(
                        height: 42.h,
                        decoration: BoxDecoration(
                          color: AppColor.textFieldBackGroundColor,
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0.sp),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "7 : 30 AM",
                                  style: TextStyle(
                                    color: AppColor.blackText,
                                    fontFamily: AppFont.fontFamily,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(width: 30.w,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 5.0),
                                  child: Image.asset(
                                    AppAssets.downIcon,
                                    height: 6.h,
                                    width: 9.w,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
