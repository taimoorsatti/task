
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task/app/theme/font.dart';
import 'package:task/models/all_recipes/all_recipes_model.dart';

import '../../../app/theme/colors.dart';


class RecipeCard extends StatelessWidget {
  Recipes?data;

  RecipeCard ({super.key,this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          border: Border.all(
            color: AppColor.primaryColor.withOpacity(0.2),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10.r)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Hero(
              tag: data?.id,
              child: Image.network(data!.image.toString())),
          Text("${data!.tags![0]} ${data!.tags![1]}",
            textAlign: TextAlign.center,

            style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w600,
            fontFamily: AppFont.fontFamily,
            color: AppColor.primaryColor

          ),),
        ],
      ),


    );
  }
}