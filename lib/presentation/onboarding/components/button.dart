import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';



import '../../../app/theme/colors.dart';
import '../../../app/theme/font.dart';
import '../../../routing/routes.dart';
import '../../../utils/appassets.dart';
import '../../common/appbutton.dart';







class OnboardingButton extends StatelessWidget {

  const OnboardingButton({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return AppButton(
      fontFamily: AppFont.fontFamily,
      minBtnHeight: 60.h,
      borderRadius: 16.r,
      maxBtnHeight: 60.h,
      fontSize: 14.sp,
      fontWeight:FontWeight.w500 ,
      text: 'Start Learning',
      // isIcon: AppAssets.arrowRight,
      onClick: () {
        FocusScope.of(context).unfocus();
        Get.toNamed(AppRoutes.login);

      },
      color: AppColor.primaryColor,
      textColor: AppColor.whiteColor,
    );
  }
}