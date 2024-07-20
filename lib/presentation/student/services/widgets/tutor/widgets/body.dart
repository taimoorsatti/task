import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/app/theme/font.dart';
import 'package:task/presentation/student/services/widgets/assignment/widgets/deadline.dart';
import 'package:task/presentation/student/services/widgets/assignment/widgets/file_section.dart';
import 'package:task/presentation/student/services/widgets/assignment/widgets/previous.dart';
import 'package:task/presentation/student/services/widgets/assignment/widgets/textfield.dart';
import 'package:task/presentation/student/services/widgets/tutor/widgets/dropdown.dart';
import 'package:task/presentation/student/services/widgets/tutor/widgets/previous.dart';
import 'package:task/presentation/student/services/widgets/tutor/widgets/shift.dart';
import 'package:task/utils/appassets.dart';

import '../../../../../../app/theme/colors.dart';
import '../../../../../common/appbutton.dart';
import '../../../../../common/apptextField2.dart';
import '../../../../../common/apptextfield.dart';
import 'file_section.dart';

class TutorBody extends StatefulWidget {
  const TutorBody({super.key});

  @override
  State<TutorBody> createState() => _TutorBodyState();
}

class _TutorBodyState extends State<TutorBody> {
  bool isShow = false;
  @override

  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0.w),
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              DropDownWidget(
                text: "Maths",
                subText: "I want to Learn",
                onTap: () {
                  isShow=true;
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              DropDownWidget(
                text: "Anytime",
                subText: "I am available",
                onTap: () {
                  setState(() {
                    isShow = true;
                  });
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              const FileSectionTutorWidget(),
              SizedBox(
                height: 20.h,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(
                          0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: AppTextField2(
                  height: 60.h,
                  hint: 'Any Comments',
                  textInputType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(
                        left: 0.sp, right: 0.sp, bottom: 0.h),
                    child: Image.asset(AppAssets.search,
                        height: 20.h,
                        width: 20.w,
                        color: AppColor.whiteColor),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              AppButton(
                text: "Submit",
                onClick: () {
                  //Get.toNamed(AppRoutes.offers);
                },
                minBtnHeight: 43.h,
                borderRadius: 16.r,
                fontSize: 16.sp,
                fontFamily: AppFont.fontFamily,
                maxBtnHeight: 43.h,
                minimumBtnWidth: 292.w,
                fontWeight: FontWeight.w500,
                color: AppColor.primaryColor,
              ),
              SizedBox(
                height: 20.h,
              ),
              const PreViousWidgetTutor(),
            ],
          ),
          isShow
              ? Padding(
                  padding: EdgeInsets.only(top: 60.0.h),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 363.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.r),
                        border: Border.all(color: AppColor.blackText, width: 1),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0.sp),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  isShow=false;
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.only(right: 15.0.w, top: 5.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Image.asset(
                                      AppAssets.arrowup,
                                      height: 8.h,
                                      width: 13.w,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Day Time",
                                    style: TextStyle(
                                      color:
                                          const Color.fromRGBO(27, 30, 40, 0.7),
                                      fontFamily: AppFont.fontFamily,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ShiftContainor(
                                        image: AppAssets.sun1,
                                        text: "9-11",
                                      ),
                                      ShiftContainor(
                                        image: AppAssets.sun1,
                                        text: "9-11",
                                      ),
                                      ShiftContainor(
                                        image: AppAssets.sunfill,
                                        text: "9-11",
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Text(
                                    "Evening and Night",
                                    style: TextStyle(
                                      color:
                                          const Color.fromRGBO(27, 30, 40, 0.7),
                                      fontFamily: AppFont.fontFamily,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ShiftContainor(
                                        image: AppAssets.cloud,
                                        text: "15-18",
                                      ),
                                      ShiftContainor(
                                        image: AppAssets.moon1,
                                        text: "18-21",
                                      ),
                                      ShiftContainor(
                                        image: AppAssets.moon2,
                                        text: "21-24",
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Text(
                                    "Morning",
                                    style: TextStyle(
                                      color:
                                          const Color.fromRGBO(27, 30, 40, 0.7),
                                      fontFamily: AppFont.fontFamily,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ShiftContainor(
                                        image: AppAssets.morning1,
                                        text: "15-18",
                                      ),
                                      ShiftContainor(
                                        image: AppAssets.morning2,
                                        text: "18-21",
                                      ),
                                      SizedBox(
                                        width: 70.w,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Text(
                                    "Morning",
                                    style: TextStyle(
                                      color:
                                          const Color.fromRGBO(27, 30, 40, 0.7),
                                      fontFamily: AppFont.fontFamily,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      DaysContainor(
                                        text: "Sun",
                                      ),
                                      DaysContainor(
                                        text: "Mon",
                                      ),
                                      DaysContainor(
                                        text: "Tue",
                                      ),
                                      DaysContainor(
                                        text: "Wed",
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      DaysContainor(
                                        text: "Tue",
                                      ),
                                      DaysContainor(
                                        text: "Fri",
                                      ),
                                      DaysContainor(
                                        text: "Sat",
                                      ),
                                      SizedBox(width: 60.w,)

                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
