import 'package:design_test/modules/splash/controller/splash_controller.dart';
import 'package:design_test/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  static const String id = "/SplashView";
  final splashController = Get.put(SplashController());
  SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AlphaColors().backgroundColor,
      body: Stack(
        fit: StackFit.passthrough,
        children: [
          Center(
            child: Image.asset(
              "assets/images/splash_logo.png",
              height: 200.h,
            ),
          ),
        ],
      ),
    );
  }
}
