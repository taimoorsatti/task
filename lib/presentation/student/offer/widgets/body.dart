import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/app/theme/colors.dart';
import 'package:task/app/theme/font.dart';
import 'package:task/utils/appassets.dart';

class OfferBody extends StatelessWidget {
  const OfferBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50.h,
        ),
        Container(
          height: 22.h,
          width: 52.w,
          child: Center(
            child: Text("Today",
                style: TextStyle(
                  color: AppColor.blackText,
                  fontSize: 14.sp,
                  fontFamily: AppFont.fontFamily,
                  fontWeight: FontWeight.w500,
                )),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25.h,
            ),
            Center(
              child: Container(
                height: 235.h,
                width: 300.w,
                decoration: BoxDecoration(
                  color: AppColor.whiteColor,
                  borderRadius: BorderRadius.circular(15.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("",
                              style: TextStyle(
                                color: const Color.fromRGBO(96, 156, 132, 1),
                                fontSize: 10.sp,
                                fontFamily: AppFont.fontFamily,
                                fontWeight: FontWeight.w400,
                              )),
                          Text("9:25 AM",
                              style: TextStyle(
                                color: const Color.fromRGBO(121, 124, 123, 1),
                                fontSize: 10.sp,
                                fontFamily: AppFont.fontFamily,
                                fontWeight: FontWeight.w400,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text("First Math Tutor",
                          style: TextStyle(
                            color: AppColor.blackText,
                            fontSize: 15.sp,
                            fontFamily: AppFont.fontFamily,
                            fontWeight: FontWeight.w500,
                          )),
                      SizedBox(
                        height: 15.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const CircleAvatar(
                              backgroundImage: AssetImage(AppAssets.male),
                              maxRadius: 24,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text("Name : Ali",
                                      style: TextStyle(
                                        color: AppColor.blackText,
                                        fontSize: 14.sp,
                                        fontFamily: AppFont.fontFamily,
                                        fontWeight: FontWeight.w400,
                                      )),
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text("Rating : 92%",
                                      style: TextStyle(
                                        color: AppColor.blackText,
                                        fontSize: 14.sp,
                                        fontFamily: AppFont.fontFamily,
                                        fontWeight: FontWeight.w400,
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 60.0.w, top: 5),
                        child: Row(
                          children: [
                            Image.asset(
                              AppAssets.starsIcon,
                              width: 67.w,
                              height: 10.h,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 28.h,
                            width: 80.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                                color: Color.fromRGBO(52, 168, 83, 1)),
                            child: Center(
                              child: Text("Connect",
                                  style: TextStyle(
                                    color: AppColor.whiteColor,
                                    fontSize: 12.sp,
                                    fontFamily: AppFont.fontFamily,
                                    fontWeight: FontWeight.w500,
                                  )),
                            ),
                          ),
                          Container(
                            height: 28.h,
                            width: 80.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                                color: AppColor.primaryColor),
                            child: Center(
                              child: Text("Next Offer",
                                  style: TextStyle(
                                    color: AppColor.whiteColor,
                                    fontSize: 12.sp,
                                    fontFamily: AppFont.fontFamily,
                                    fontWeight: FontWeight.w500,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
        SizedBox(
          height: 25.h,
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
    ;
  }
}
