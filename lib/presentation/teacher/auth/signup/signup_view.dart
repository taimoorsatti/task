import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task/controllers/auth/signup/signup_controller.dart';
import 'package:task/presentation/teacher/auth/signup/widget/Textfield.dart';
import 'package:task/presentation/teacher/auth/signup/widget/contact_details.dart';
import 'package:task/presentation/teacher/auth/signup/widget/login_details.dart';
import 'package:task/presentation/teacher/auth/signup/widget/personal_details.dart';
import 'package:task/presentation/teacher/auth/signup/widget/top_widgets.dart';

import '../../../../app/theme/colors.dart';
import '../../../../app/theme/font.dart';
import '../../../../routing/routes.dart';
import '../../../common/appbutton.dart';
import '../../../common/back_button.dart';
import '../../../student/auth/signup/widget/top_widgets.dart';
import 'widget/check_box_widget.dart';
import '../login/widgets/top_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpController controller=Get.put(SignUpController());
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
            child: ListView(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                const TeacherTopWidgetSignUp(),
                SizedBox(height: 30.h),
                const LoginDetailsSignUp(),
                SizedBox(height: 30.h),
                const PersonalInfoDetails(),
                SizedBox(height: 30.h),
                const ContactDetails(),
                SizedBox(height: 40.h),
                Center(
                  child: AppButton(
                    text: "Sign Up",
                    onClick: () {
                      {
                        Get.find<SignUpController>().validateEmail(
                            email: Get
                                .find<SignUpController>()
                                .registerEmailController
                                .text,
                            name:  Get
                                .find<SignUpController>()
                                .registerNameController
                                .text,
                            userName:  Get
                                .find<SignUpController>()
                                .registerUserNameController
                                .text,
                            password: Get
                                .find<SignUpController>()
                                .registerPasswordController
                                .text,
                            gender: Get
                                .find<SignUpController>()
                                .registerGenderController
                                .text ,
                            country:Get
                                .find<SignUpController>()
                                .registerCountryController
                                .text,
                            phone: Get
                                .find<SignUpController>()
                                .phoneController
                                .text,
                            type: "teacher");
                      }
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
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: TextStyle(
                        color: AppColor.greyColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: AppFont.fontFamily,
                      ),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.login);
                      },
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: AppFont.fontFamily,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.h,),
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
    ));
  }
}
