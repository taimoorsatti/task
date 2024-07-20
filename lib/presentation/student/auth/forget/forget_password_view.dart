import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../app/theme/colors.dart';
import '../../../../app/theme/font.dart';
import '../../../../routing/routes.dart';
import '../../../../utils/appassets.dart';
import '../../../common/appbutton.dart';
import '../../../common/apptextField2.dart';
import '../../../common/back_button.dart';
import '../../../common/custom_dialog.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 130.h,
                  ),
                  Text(
                    "Forgot password",
                    style: TextStyle(
                      color: AppColor.blackText,
                      fontFamily: AppFont.fontFamily,
                      fontSize: 26.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Enter your email account to reset\n  your password",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColor.greyLight,
                      fontFamily: AppFont.fontFamily,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow:[
                        BoxShadow(

                          color: Colors.grey.withOpacity(0.35), //color of shadow
                          spreadRadius: 2, //spread radius
                          blurRadius: 5, // blur radius
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                        //you can set more BoxShadow() here
                      ],
                    ),
                    child: AppTextField2(
                      hint: 'www.uihut@gmail.com',
                      textInputType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(
                            left: 10.sp, right: 10.sp, bottom: 5.h),
                        child: Image.asset(AppAssets.card,
                            height: 20.h,
                            width: 20.w,
                            color: AppColor.textFieldBackGroundColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Center(
                    child: AppButton(
                      text: "Reset Password",
                      onClick: () {
                        showDialog(
                            barrierColor: Colors.transparent,
                            context: context,
                            builder: (BuildContext context) {
                              return showForgetPasswordDialog();
                            });


                      },
                      minBtnHeight: 56.h,
                      borderRadius: 16.r,
                      fontSize: 16.sp,
                      fontFamily: AppFont.fontFamily,
                      maxBtnHeight: 56.h,
                      minimumBtnWidth: 335.w,
                      fontWeight: FontWeight.w500,
                      color: AppColor.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 15.w),
              child: const Align(
                  alignment: Alignment.topLeft, child: BackButtonWidget()),
            ),
          ],
        ),
      ),
    ));
  }
}
