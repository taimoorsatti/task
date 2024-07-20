import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/app/theme/colors.dart';
import 'package:task/app/theme/font.dart';
import 'package:task/utils/appassets.dart';

class PreviousMeetingWidget extends StatelessWidget {
  const PreviousMeetingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 26.h,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: AppColor.textFieldBackGroundColor,
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Text(
              "Previos Meetings",
              style: TextStyle(
                color: AppColor.blackText,
                fontFamily: AppFont.fontFamily,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.only(top: 20.h, left: 15.w, right: 15.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 48.h,
                          width: 52.w,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(217, 217, 217, 1),
                            borderRadius: BorderRadius.circular(50.r),
                          ),
                          child: Center(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  AppAssets.videoMeeting,
                                  width: 21.w,
                                  height: 20.h,
                                ),
                                Image.asset(
                                  AppAssets.videoMeeting1,
                                  width: 10.w,
                                  height: 14.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Math Class7",
                              style: TextStyle(
                                color: AppColor.blackText,
                                fontFamily: AppFont.fontFamily,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Text(
                              "Fri, May 31  10:59 PM",
                              style: TextStyle(
                                color: AppColor.blackText,
                                fontFamily: AppFont.fontFamily,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                }))
      ],
    );
  }
}
