import 'package:design_test/modules/home/controller/home_controller.dart';
import 'package:design_test/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/label_widget.dart';
import '../../../widgets/side_bar_menu/slider.dart';

class HomeView extends StatelessWidget {
  static const String id = "/HomeView";
  final homeController = Get.find<HomeController>();
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AlphaColors().backgroundColor,
      child: SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor: AlphaColors().backgroundColor,
          body: SliderDrawer(
            key: homeController.sliderDrawerKey,
            slider: sliderMenu(),
            child: Container(
              width: double.maxFinite,
              color: AlphaColors().backgroundColor,
              // child: Obx(
              //   () => Navigator(
              //     key: Get.nestedKey(homeController
              //         .navItems[homeController.selectedNavItem.value]),
              //     initialRoute: ChatView.id,
              //     onGenerateRoute: (settings) {
              //       return GetPageRoute(
              //         settings: settings,
              //         page: () {
              //           switch (homeController.selectedNavItem.value) {
              //             case 0:
              //               return homeController
              //                   .navItems[homeController.selectedNavItem.value];
              //             case 1:
              //               return homeController
              //                   .navItems[homeController.selectedNavItem.value];
              //             default:
              //               return homeController
              //                   .navItems[homeController.selectedNavItem.value];
              //           }
              //         },
              //       );
              //     },
              //   ),
              // ),
              child: Obx(
                () => homeController
                    .navItems[homeController.selectedNavItem.value],
              ),
            ),
          ),
        ),
      ),
    );
  }

  sliderMenu() {
    return Obx(
      () => Container(
        decoration: BoxDecoration(
          color: AlphaColors().backgroundColor,
          border: Border(
            right: BorderSide(
              color: AlphaColors().gray,
              width: 1.sp,
            ),
          ),
        ),
        child: Column(
          children: [
            35.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/alpha_app_logo.png',
                  width: 32.w,
                ),
                10.horizontalSpace,
                LabelWidget(
                  text: 'alpha',
                  fontSize: 26.sp,
                  fontWeight: FontWeight.bold,
                  textColor: AlphaColors().basicTextNew,
                  padding: 0,
                  fontFamily: GoogleFonts.comfortaa().fontFamily,
                ),
              ],
            ),
            35.verticalSpace,
            sliderMenuItem(
              title: 'Overview',
              imagePath: 'assets/images/dashboard_icon.png',
              isSelected: homeController.selectedNavItem.value == 0,
              onTap: () {
                homeController.selectedNavItem.value = 0;
                homeController.sliderDrawerKey.currentState?.closeSlider();
              },
            ),
            sliderMenuItem(
              title: 'Calendar',
              imagePath: 'assets/images/calendar_icon.png',
              isSelected: homeController.selectedNavItem.value == 1,
              onTap: () {
                homeController.selectedNavItem.value = 1;
                homeController.sliderDrawerKey.currentState?.closeSlider();
              },
            ),
            sliderMenuItem(
              title: 'Chat',
              imagePath: 'assets/images/chat_icon.png',
              isSelected: homeController.selectedNavItem.value == 2,
              onTap: () {
                homeController.selectedNavItem.value = 2;
                homeController.sliderDrawerKey.currentState?.closeSlider();
              },
            ),
          ],
        ),
      ),
    );
  }

  sliderMenuItem({
    String? imagePath,
    String? title,
    Function? onTap,
    bool isSelected = false,
  }) {
    return GestureDetector(
      onTap: onTap as void Function()?,
      child: Container(
        height: 56.h,
        margin: EdgeInsets.symmetric(horizontal: 20.w),
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: BoxDecoration(
          color: isSelected
              ? AlphaColors().accentColor.withOpacity(0.1)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Row(
          children: [
            Image.asset(
              imagePath ?? 'assets/images/alpha_app_logo.png',
              height: 22.h,
            ),
            12.horizontalSpace,
            LabelWidget(
              text: title ?? 'alpha',
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
              textColor: isSelected
                  ? AlphaColors().selectedTextNew
                  : AlphaColors().secTextNew,
              padding: 0,
            ),
          ],
        ),
      ),
    );
  }
}
