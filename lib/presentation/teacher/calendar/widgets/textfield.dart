import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/app/theme/colors.dart';
import 'package:task/app/theme/font.dart';
import 'package:task/presentation/common/apptextfield.dart';

import '../../../../utils/appassets.dart';

class CalendarTextFeildWidget extends StatelessWidget {
  const CalendarTextFeildWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "Start Time",
                        style: TextStyle(
                          color: AppColor.blackText,
                          fontFamily: AppFont.fontFamily,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Container(
                      height: 42.h,
                      width: 151.w,
                      decoration: BoxDecoration(
                        color: AppColor.whiteColor,
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.all(12.0.sp),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.watch_later_outlined,
                                size: 18,
                                color: AppColor.primaryColor,
                              ),
                              Text(
                                "06 : 00 PM",
                                style: TextStyle(
                                  color: AppColor.blackText,
                                  fontFamily: AppFont.fontFamily,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "End Time",
                        style: TextStyle(
                          color: AppColor.blackText,
                          fontFamily: AppFont.fontFamily,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Container(
                      height: 42.h,
                      width: 151.w,
                      decoration: BoxDecoration(
                        color: AppColor.whiteColor,
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.all(12.0.sp),
                          child: GestureDetector(
                            // onTap: () {
                            //   showDialog(
                            //       context: context,
                            //       builder: (_) {
                            //         //return showStudentCountryDialog();
                            //       });
                            // },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                               const  Icon(
                                  Icons.watch_later_outlined,
                                  size: 18,
                                  color: AppColor.primaryColor,
                                ),
                                Text(
                                  "09 : 00 PM",
                                  style: TextStyle(
                                    color: AppColor.blackText,
                                    fontFamily: AppFont.fontFamily,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
