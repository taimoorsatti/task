import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task/routing/routes.dart';

import '../../app/theme/colors.dart';
import '../../app/theme/font.dart';
import '../../utils/appassets.dart';
import '../common/appbutton.dart';

class GetStart extends StatelessWidget {
  const GetStart({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColor.whiteColor,
          body: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppAssets.appIconImage,
                    height: 237.h,
                    width: 197.w,
                  ),
                  Center(
                    child: AppButton(
                      text: "Get Started",
                      onClick: () {
                        Get.toNamed(AppRoutes.home);
                      },
                      minBtnHeight: 52.h,
                      borderRadius: 10.r,
                      fontSize: 16.sp,
                      fontFamily: AppFont.fontFamily,
                      maxBtnHeight: 52.h,
                      minimumBtnWidth: 335.w,
                      fontWeight: FontWeight.w700,
                      color: AppColor.primaryColor,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      " Virtual Help Education Platform",
                      style: TextStyle(
                        color: AppColor.blackText,
                        fontFamily: AppFont.fontFamily,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w300,
                      ),
                    )),
              )
            ],
          )),
    );
  }
}
