import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:task/app/theme/colors.dart';
import 'package:task/app/theme/font.dart';
import 'package:task/utils/appassets.dart';

import '../../routing/routes.dart';
import 'appbutton.dart';

class showForgetPasswordDialog extends StatefulWidget {
  String? onClick;

  showForgetPasswordDialog({this.onClick});

  @override
  State<showForgetPasswordDialog> createState() =>
      _showForgetPasswordDialogState();
}

class _showForgetPasswordDialogState extends State<showForgetPasswordDialog> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //Get.find<SignInController>().restpasswordController;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Stack(
        children: [
          Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.8,
              padding: EdgeInsets.only(
                  left: 15.sp, right: 15.sp, top: 20.sp, bottom: 15.sp),
              decoration: BoxDecoration(
                color: AppColor.whiteColor,
                borderRadius: BorderRadius.circular(15.r),
                boxShadow:[
                  BoxShadow(

                    color: Colors.grey.withOpacity(0.5), //color of shadow
                    spreadRadius: 2, //spread radius
                    blurRadius: 5, // blur radius
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                  //you can set more BoxShadow() here
                ],
              ),
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        Image.asset(
                          AppAssets.dialog,
                          width: 45.w,
                          height: 45.h,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "Check your email",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: AppFont.fontFamily),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "We have send password recovery\n instruction to your email",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColor.greyLight,
                            fontFamily: AppFont.fontFamily,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Center(
                          child: AppButton(
                            text: "Continue",
                            onClick: () {
                              Get.back();
                              Get.toNamed(AppRoutes.otp);
                            },
                            minBtnHeight: 56.h,
                            borderRadius: 16.r,
                            fontSize: 16.sp,
                            fontFamily: AppFont.fontFamily,
                            maxBtnHeight: 56.h,
                            minimumBtnWidth: 200.w,
                            fontWeight: FontWeight.bold,
                            color: AppColor.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
