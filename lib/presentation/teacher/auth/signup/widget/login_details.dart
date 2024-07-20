import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../app/theme/colors.dart';
import '../../../../../app/theme/font.dart';
import '../../../../common/apptextfield.dart';
import '../../../../student/auth/signup/widget/Textfield.dart';

class LoginDetailsSignUp extends StatelessWidget {
  const LoginDetailsSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Set Login Details",
          style: TextStyle(
            color: AppColor.blackTextSignup,
            fontFamily: AppFont.fontFamily,
            fontSize: 13.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 3.h,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            border: Border.all(color: AppColor.greyLight, width: 0.3),
          ),
          child: Padding(
            padding:  EdgeInsets.only(left: 15.0.w,right: 15.w,bottom: 15.h,top: 5.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10.h),
                NameTextField(),
                SizedBox(height: 30.h),
                passwordTextField(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
