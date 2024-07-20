import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task/controllers/auth/login/login_controller.dart';

import 'package:task/presentation/student/auth/login/widgets/textfield.dart';
import 'package:task/presentation/student/auth/login/widgets/top_widget.dart';
import 'package:task/presentation/teacher/auth/login/widgets/textfield.dart';

import 'package:task/presentation/common/back_button.dart';
import 'package:task/presentation/teacher/auth/login/widgets/top_widget.dart';
import 'package:task/utils/appassets.dart';

import '../../../../app/theme/colors.dart';
import '../../../../app/theme/font.dart';
import '../../../../routing/routes.dart';
import '../../../common/appbutton.dart';
import '../../../common/loading.dart';

class StudentLoginViewScreen extends StatelessWidget {
  const StudentLoginViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.put(LoginController());

    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50.h,
                      ),
                      const StudentTopWidgetLogin(),
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
                                fontWeight: FontWeight.w600,
                                fontFamily: AppFont.fontFamily,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 80.h,
                      ),
                      Center(
                        child: AppButton(
                          text: "Sign in",
                          onClick: () {
                            Get.find<LoginController>().loginStudent();
                          },
                          minBtnHeight: 56.h,
                          borderRadius: 16.r,
                          fontSize: 16.sp,
                          fontFamily: AppFont.fontFamily,
                          maxBtnHeight: 56.h,
                          minimumBtnWidth: 335.w,
                          fontWeight: FontWeight.bold,
                          color: AppColor.primaryColor,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColor.whiteColor,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  offset: Offset(
                                      0, 2), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                AppAssets.appleIcon,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30.w,
                          ),
                          Container(
                            height: 50.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColor.whiteColor,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  offset: Offset(
                                      0, 2), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                AppAssets.googleIcon,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don’t have an account? ",
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
                              Get.toNamed(AppRoutes.studentSignup);
                            },
                            child: Text(
                              "Sign up",
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
