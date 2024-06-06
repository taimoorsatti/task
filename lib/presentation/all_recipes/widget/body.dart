import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:task/controllers/all_recipe_controller.dart';
import 'package:task/routing/routes.dart';

import '../../../app/theme/colors.dart';
import '../../../app/theme/font.dart';
import '../../../utils/appassets.dart';
import '../../recipe_details/recipe_details_view.dart';
import 'card.dart';

class AllRecipeBody extends StatelessWidget {
  const AllRecipeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.sp),
      child: Column(
        children: [
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "All Recipes",
                style: TextStyle(
                    color: AppColor.primaryColor,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: AppFont.fontFamily),
              ),
            ],
          ),
          SizedBox(height: 15.h),
          Obx(
            () => Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, // number of items in each row
                        mainAxisSpacing: 20.0.h, // spacing between rows
                        crossAxisSpacing: 10.0.w,
                        childAspectRatio: 0.8.h // spacing between columns
                        ),
                    itemCount: Get.find<AllRecipeController>()
                        .listAllRecipe
                        .value
                        .length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 7.h),
                        child: InkWell(
                            onTap: () {
                              Get.find<AllRecipeController>().getRecipeById(
                                  Get.find<AllRecipeController>()
                                      .listAllRecipe
                                      .value[index]
                                      .id);

                              Get.toNamed(AppRoutes.recipesDetails);
                            },
                            child: RecipeCard(
                              data: Get.find<AllRecipeController>()
                                  .listAllRecipe
                                  .value[index],
                            )),
                      );
                    })),
          ),
        ],
      ),
    );
  }
}
