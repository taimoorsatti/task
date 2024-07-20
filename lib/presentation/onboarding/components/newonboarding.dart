import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task/routing/routes.dart';

import '../../../app/theme/colors.dart';
import '../../../app/theme/font.dart';
import '../../../utils/appassets.dart';
import '../../common/appbutton.dart';
import '../size.dart';
import 'button.dart';
import 'onboarding_content.dart';

class OnboardingScreen extends StatefulWidget {
  static const String routeName = "/onbord";

  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _controller;


  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  int _currentPage = 0;

  AnimatedContainer _buildDots({
    int? index,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50.r),
        ),
        color: _currentPage == index
            ? AppColor.primaryColor
            : AppColor.greyLight.withOpacity(0.3),
      ),
      margin: EdgeInsets.only(right: 7.sp),
      height: 8.h,
      curve: Curves.easeIn,
      width: _currentPage == index ? 25.w : 8.w,
    );
  }

  @override
  Widget build(BuildContext context) {
    var mySystemTheme = SystemUiOverlayStyle.light.copyWith(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: AppColor.whiteColor,
        statusBarColor: AppColor.whiteColor,
        systemNavigationBarIconBrightness: Brightness.dark);
    SystemChrome.setSystemUIOverlayStyle(mySystemTheme);
    SizeConfig().init(context);

    return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
          
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: 20.0.sp,vertical: 50.h),
                      child: Text(
                        "LOREM IPSUM ",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: AppFont.fontFamily,
                          color: AppColor.blackText,
                          fontSize: 20.sp,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: PageView.builder(
                        physics: const BouncingScrollPhysics(),
                        controller: _controller,
                        onPageChanged: (value) =>
                            setState(() => _currentPage = value),
                        itemCount: contents.length,
                        itemBuilder: (context, i) {
                          return Padding(
                            padding: EdgeInsets.all(10.0.sp),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 350.h,
                                  width: Get.width-40,

          
                                  child: Image.asset(
                                    contents[i].image,
                                    width: SizeConfig.blockV! * 43,
                                    height: SizeConfig.blockV! * 45,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                SizedBox(
                                  height: 50.h,
                                ),
          
          
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: 20.0.sp),
                      child: Text(
                        "LOREM IPSUM ",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: AppFont.fontFamily,
                          color: AppColor.blackText,
                          fontSize: 20.sp,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(25.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          AppButton(
                            text: "Get Start",
                            onClick: () {
                            Get.toNamed(AppRoutes.home);
                            },
                            minBtnHeight: 56.h,
                            borderRadius: 30.r,
                            fontSize: 16.sp,
                            fontFamily: AppFont.fontFamily,
                            maxBtnHeight: 56.h,
                            minimumBtnWidth: 180.w,
                            fontWeight: FontWeight.w500,
                            color: AppColor.primaryColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
