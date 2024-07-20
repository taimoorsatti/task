import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:task/app/theme/colors.dart';
import 'package:task/app/theme/font.dart';
import 'package:task/presentation/common/appbar.dart';
import 'package:task/presentation/common/appbutton.dart';
import 'package:task/presentation/common/new_navbar.dart';
import 'package:task/presentation/teacher/calendar/widgets/country_pickers.dart';
import 'package:task/presentation/teacher/calendar/widgets/date_time.dart';
import 'package:task/presentation/teacher/calendar/widgets/previous_meetings.dart';
import 'package:task/presentation/teacher/calendar/widgets/textfield.dart';
import 'package:task/utils/appassets.dart';

class CalendariewScreen extends StatelessWidget {
  const CalendariewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mySystemTheme = SystemUiOverlayStyle.light.copyWith(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: AppColor.whiteNav,
        statusBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark);
    SystemChrome.setSystemUIOverlayStyle(mySystemTheme);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.whiteColor,
        bottomNavigationBar: MyNavBar(selectedMenu: MenuState.calender),
        appBar: _appBar,
        body: Column(
          children: [
            const CalendarTextFeildWidget(),
            SizedBox(height: 5.h),
            const DateTimeWidget(),
            SizedBox(height: 10.h),
            const CountryPickersWidget(),
            SizedBox(
              height: 40.h,
            ),
            AppButton(
              text: "Generate Link",
              onClick: () {
                //Get.toNamed(AppRoutes.help);
              },
              minBtnHeight: 43.h,
              borderRadius: 16.r,
              fontSize: 16.sp,
              fontFamily: AppFont.fontFamily,
              maxBtnHeight: 43.h,
              minimumBtnWidth: 292.w,
              fontWeight: FontWeight.w500,
              color: AppColor.primaryColor,
            ),
            SizedBox(
              height: 10.h,
            ),
            const Expanded(child: PreviousMeetingWidget()),
          ],
        ),
      ),
    );
  }

  PreferredSize get _appBar => PreferredSize(
        preferredSize: Size.fromHeight(56.h),
        child: AppBarItem(
          title: 'Metting Calendar',
          showBorderBottom: false,
          backgroudColor: AppColor.whiteColor,
          showLeading: true,
          prefixWidget: Image.asset(
            AppAssets.back2,
          ),
          sufixWidget: const Icon(Icons.more_vert),
        ),
      );
}
