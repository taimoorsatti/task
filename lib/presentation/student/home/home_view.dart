import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task/app/theme/colors.dart';
import 'package:task/presentation/student/home/widget/body.dart';

import '../../common/new_navbar.dart';

class HomeStudentView extends StatelessWidget {
  const HomeStudentView({super.key});

  @override
  Widget build(BuildContext context) {
    var mySystemTheme = SystemUiOverlayStyle.light.copyWith(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        statusBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark);
    SystemChrome.setSystemUIOverlayStyle(mySystemTheme);
    return SafeArea(child:
    Scaffold(
      backgroundColor: AppColor.whiteColor,
        bottomNavigationBar: MyNavBarStudent( selectedMenuStudent: MenuStateStudent.home,),
        body: StudentHomeBody()));

  }
}
