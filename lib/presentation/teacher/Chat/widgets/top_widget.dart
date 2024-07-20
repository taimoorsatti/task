import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:task/routing/routes.dart';

import '../../../../app/theme/colors.dart';
import '../../../../app/theme/font.dart';
import '../../../../controllers/teacher/ChatScreeController.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: double.infinity,
      padding: EdgeInsets.all(5.sp),
      decoration: BoxDecoration(
          // color: AppColor.textFieldBackGroundColor,
          borderRadius: BorderRadius.circular(100.r)),
      child: Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Get.find<ChatScreenController>().activeNeed.value = 0;
              },
              child: Container(
                height: 32.h,
                width: 150.w,
                margin: EdgeInsets.only(right: 7.w),
                //  padding: EdgeInsets.symmetric(vertical: 10.5.h,horizontal: 24.w),
                decoration: BoxDecoration(
                    color:
                        Get.find<ChatScreenController>().activeNeed.value == 0
                            ? AppColor.whiteColor
                            : AppColor.textFieldBackGroundColor,
                    borderRadius: BorderRadius.circular(25.r),
                    boxShadow:
                        Get.find<ChatScreenController>().activeNeed.value == 0
                            ? [
                                BoxShadow(
                                    color: AppColor.whiteColor.withOpacity(0.4),
                                    offset: Offset(0, 2.h),
                                    blurRadius: 5.r,
                                    spreadRadius: 2.r)
                              ]
                            : []),
                child: Center(
                  child: Text(
                    'Group',
                    style: TextStyle(
                      fontFamily: AppFont.fontFamily,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w600,
                      color:
                          Get.find<ChatScreenController>().activeNeed.value == 0
                              ? AppColor.primaryColor
                              : AppColor.greyColor,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                print(1);
                Get.find<ChatScreenController>().activeNeed.value = 1;
              },
              child: Container(
                height: 40.h,
                width: 156.w,
                margin: EdgeInsets.only(right: 7.w),
                // padding: EdgeInsets.symmetric(vertical: 10.5.h,horizontal: 24.w),
                decoration: BoxDecoration(
                    color:
                        Get.find<ChatScreenController>().activeNeed.value == 1
                            ? AppColor.whiteColor
                            : AppColor.textFieldBackGroundColor,
                    borderRadius: BorderRadius.circular(25.r),
                    boxShadow:
                        Get.find<ChatScreenController>().activeNeed.value == 1
                            ? [
                                BoxShadow(
                                    color: AppColor.whiteColor.withOpacity(0.4),
                                    offset: Offset(0, 2.h),
                                    blurRadius: 5.r,
                                    spreadRadius: 2.r)
                              ]
                            : []),
                child: Center(
                  child: Text(
                    'Messages',
                    style: TextStyle(
                        fontFamily: AppFont.fontFamily,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                        color:
                            Get.find<ChatScreenController>().activeNeed.value ==
                                    1
                                ? AppColor.primaryColor
                                : AppColor.greyColor),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
