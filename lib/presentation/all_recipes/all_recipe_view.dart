import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:task/app/theme/colors.dart';
import 'package:task/controllers/all_recipe_controller.dart';
import 'package:task/presentation/all_recipes/widget/body.dart';

class AllRecipeViewScreen extends StatelessWidget {
  AllRecipeViewScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    var mySystemTheme = SystemUiOverlayStyle.light.copyWith(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: AppColor.whiteColor,
        statusBarColor: AppColor.whiteColor,
        systemNavigationBarIconBrightness: Brightness.dark);
    SystemChrome.setSystemUIOverlayStyle(mySystemTheme);

    return const SafeArea(child: Scaffold(body: AllRecipeBody(),));
  }
}
