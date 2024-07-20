import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task/presentation/home/widgets/top_widget.dart';
import 'package:task/utils/appassets.dart';

import '../../routing/routes.dart';



class HomeViewScren extends StatelessWidget {
  const HomeViewScren({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //const BackButtonWidget(),
              const TopWidget(),
              SizedBox(
                height: 60.h,
              ),
              GestureDetector(
                onTap: (){
                  Get.toNamed(AppRoutes.login);
                },
                child: Image.asset(
                  AppAssets.teacherImage,
                  width: 313.w,
                  height: 210.h,
                  fit: BoxFit.fill,
                ),
              ),
              // StudentTeacherWidget(
              //   text: "Student",
              //   image: AppAssets.studentImage,
              //   onTap: () {
              //     Get.toNamed(AppRoutes.studentlogin);
              //   },
              // ),
              GestureDetector(
                onTap: (){
                  Get.toNamed(AppRoutes.studentlogin);
                },
                child: Image.asset(
                  AppAssets.studentImage,
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
        ),
      ),
    );
  }
}
