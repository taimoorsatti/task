import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controllers/all_recipe_controller.dart';

class TopImageWidget extends StatelessWidget {
  const TopImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.h,
      width: Get.width,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Hero(
          tag: Get.find<AllRecipeController>()
              .currentRecipes
              .value
              .id,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.r),
            child: Image.network(
              Get.find<AllRecipeController>()
                  .currentRecipes
                  .value
                  .image
                  .toString(),
              fit: BoxFit.fill,
            ),
          )),
    );
  }
}
