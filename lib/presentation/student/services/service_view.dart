import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task/app/theme/colors.dart';
import 'package:task/app/theme/font.dart';
import 'package:task/presentation/common/new_navbar.dart';
import 'package:task/presentation/home/widgets/student_teacher.dart';
import 'package:task/presentation/student/services/widgets/body.dart';
import 'package:task/routing/routes.dart';
import 'package:task/utils/appassets.dart';

class ServiceViewScreen extends StatelessWidget {
  const ServiceViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mySystemTheme = SystemUiOverlayStyle.light.copyWith(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        statusBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark);
    SystemChrome.setSystemUIOverlayStyle(mySystemTheme);

    return SafeArea(
        child: Scaffold(
          backgroundColor: AppColor.whiteColor,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[

               SizedBox(
                  width: 30.w,
                ),
                Image.asset(
                  AppAssets.serviceIcon,
                  width: 45.w,
                  height: 42.h,
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Our Services",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: AppFont.fontFamily,
                            color: AppColor.blackText,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                const Icon(Icons.more_vert),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          //const BackButtonWidget(),

          GestureDetector(
            onTap: (){
             Get.toNamed(AppRoutes.assignment);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppAssets.assigmentimage,
                  width: 313.w,
                  height: 210.h,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),

          GestureDetector(
            onTap: (){
              Get.toNamed(AppRoutes.tutor);
            },
            child: Image.asset(
              AppAssets.tutorimage,
              width: 313.w,
              height: 210.h,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 35.h,
          ),
          // StudentTeacherWidget(
          //   text: "Teacher",
          //   image: AppAssets.teacherImage,
          //   onTap: () {
          //     Get.toNamed(AppRoutes.login);
          //   },
          // ),
        ],
      ),
      bottomNavigationBar:
          MyNavBarStudent(selectedMenuStudent: MenuStateStudent.service),
    ));
  }
}
