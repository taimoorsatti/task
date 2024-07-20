import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task/controllers/auth/login/login_controller.dart';
import 'package:task/presentation/teacher/auth/login/widgets/textfield.dart';

import 'package:task/presentation/common/back_button.dart';
import 'package:task/presentation/teacher/auth/login/widgets/top_widget.dart';

import '../../../../app/theme/colors.dart';
import '../../../../app/theme/font.dart';

import '../../../../routing/routes.dart';
import '../../../common/appbutton.dart';
import '../../../common/loading.dart';

class LoginViewScreen extends StatelessWidget {
  const LoginViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.put(LoginController());
    GlobalKey<FormState> loginkey1 = GlobalKey<FormState>();
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Form(
              key: loginkey1,
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40.h,
                        ),
                        const TopWidgetLoginTeacher(),
                        SizedBox(
                          height: 80.h,
                        ),
                        TeacherEmailTextField(),
                        SizedBox(
                          height: 30.h,
                        ),
                        TeacherpasswordTextField(),
                        SizedBox(
                          height: 10.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoutes.forget);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Forgot password?",
                                style: TextStyle(
                                  color: AppColor.primaryColor,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: AppFont.fontFamily,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 100.h,
                        ),
                        Center(
                          child: AppButton(
                            text: "Sign in",
                            onClick: () {
                              Get.find<LoginController>().loginTeacher();
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
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don’t have an account?",
                              style: TextStyle(
                                color: AppColor.greyColor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                fontFamily: AppFont.fontFamily,
                              ),
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(AppRoutes.signup);
                              },
                              child: Text(
                                "Sign up",
                                style: TextStyle(
                                  color: AppColor.primaryColor,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: AppFont.fontFamily,
                                ),
                              ),
                            ),
                          ],
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
          ),
          Obx(
                () => Get.find<LoginController>().isLoading.value == true
                ? Center(

                child: CustomDialog(
                    color: Colors.white,
                    backgroundColor: AppColor.primaryColor))
                : SizedBox(),
          ),
        ],
      ),
    ));
  }
}
