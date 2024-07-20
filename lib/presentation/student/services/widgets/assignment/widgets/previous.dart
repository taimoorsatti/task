import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../app/theme/colors.dart';
import '../../../../../../app/theme/font.dart';
import '../../../../../../utils/appassets.dart';

class PreViousWidget extends StatelessWidget {
  const PreViousWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          Container(
            height: 200.h,
            width: double.infinity,
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
              padding: const EdgeInsets.all(5.0),
              child: Padding(
                padding: EdgeInsets.all(8.0.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Previous",
                          style: TextStyle(
                            color: AppColor.blackText,
                            fontFamily: AppFont.fontFamily,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          height: 17.h,
                          width: 17.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: Color.fromRGBO(52, 168, 83, 1),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 110.h,
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
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "task1",
                                  style: TextStyle(
                                    color: AppColor.blackText,
                                    fontFamily: AppFont.fontFamily,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Container(
                                  width: 200.w,
                                  child: Text(
                                    "This the description of tutor1...",
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      color: AppColor.greyLight,
                                      fontFamily: AppFont.fontFamily,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 28.h,
                width: 80.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: const Color.fromRGBO(234, 67, 53, 1),
                ),
                child: Center(
                    child: Text(
                  "Delete",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: AppFont.fontFamily,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                )),
              )
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
        ],
      ),
    );
  }
}
