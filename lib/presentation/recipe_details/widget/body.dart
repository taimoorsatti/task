import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task/app/theme/colors.dart';
import 'package:task/app/theme/font.dart';
import 'package:task/controllers/all_recipe_controller.dart';
import 'package:task/presentation/recipe_details/widget/top_widget.dart';

class RecipeDetailsBody extends StatelessWidget {
  const RecipeDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Get.find<AllRecipeController>().isLoading.value
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: EdgeInsets.symmetric(vertical: 15.sp, horizontal: 10.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TopImageWidget(),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(Get.find<AllRecipeController>()
                      .currentRecipes
                      .value
                      .name
                      .toString(),style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColor.primaryColor,
                    fontFamily: AppFont.fontFamily
                  ),),
                  Row(
                    children: [
                      Text("Reviews:",style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColor.primaryColor,
                          fontFamily: AppFont.fontFamily
                      ),),
                      SizedBox(width: 5.w,),
                      Text(Get.find<AllRecipeController>()
                          .currentRecipes
                          .value
                          .rating
                          .toString(),style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontFamily: AppFont.fontFamily
                      ),),
                    ],
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Text("Description:",style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColor.primaryColor,
                      fontFamily: AppFont.fontFamily
                  ),),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(Get.find<AllRecipeController>()
                      .currentRecipes
                      .value
                      .instructions
                      .toString(),style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontFamily: AppFont.fontFamily
                  ),),
                ],
              ),
            ),
    );
  }
}
