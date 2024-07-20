import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task/app/theme/font.dart';

import '../../../../../app/theme/colors.dart';
import '../../../../common/appbutton.dart';
import '../../../../common/back_button.dart';
import 'otp_form.dart';

class OTPBody extends StatelessWidget {
  const OTPBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            SizedBox(
              height: 130.h,
            ),
            Text(
              "OTP Verification",
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
              "Please check your email www.uihut@gmail.com\n to see the verification code",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColor.greyLight,
                fontFamily: AppFont.fontFamily,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 40.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [

                Padding(
                  padding: EdgeInsets.only(left: 20.0.w),
                  child: Text(
                    "OTP Code",
                    style: TextStyle(
                      color: AppColor.blackText,
                      fontFamily: AppFont.fontFamily,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h,),
            const VerificationOtpForm(),
            SizedBox(height: 40.h,),

            Center(
              child: AppButton(
                text: "Verify",
                onClick: () {
                  //Get.toNamed(AppRoutes.otp);
                },
                minBtnHeight: 52.h,
                borderRadius: 16.r,
                fontSize: 16.sp,
                fontFamily: AppFont.fontFamily,
                maxBtnHeight: 52.h,
                minimumBtnWidth: 335.w,
                fontWeight: FontWeight.w500,
                color: AppColor.primaryColor,
              ),
            ),


            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 25.w,vertical: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Resend code to ",
                    style: TextStyle(
                      color: AppColor.greyLight,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: AppFont.fontFamily,
                    ),
                  ),
                  Text("00.21",style: TextStyle(

                      color: AppColor.greyLight,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: AppFont.fontFamily,
                    )),
                ],
              ),
            ),

          ],
        ),

        Padding(
          padding: EdgeInsets.only(top: 10.h, left: 15.w),
          child: const Align(
              alignment: Alignment.topLeft, child: BackButtonWidget()),
        ),
      ],
    );
  }
}
