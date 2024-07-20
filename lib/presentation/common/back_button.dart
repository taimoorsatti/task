import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../app/theme/colors.dart';
import '../../utils/appassets.dart';

class BackButtonWidget extends StatelessWidget {
  final Function()? onTap;
  final String? image;
  final Color? backgroundColor;
  final Color? iconColor;

  const BackButtonWidget(
      {Key? key, this.onTap, this.backgroundColor, this.image, this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: onTap ??
              () {
                Get.back();
              },
          child: CircleAvatar(
            backgroundColor:
                backgroundColor ?? AppColor.textFieldBackGroundColor,
            radius: 25.r,
            child: Center(
                child: Image.asset(
              image ?? AppAssets.backIcon,
              color: iconColor ?? AppColor.blackText,
              height: 20.h,
              width: 20.w,
            )),
          ),
        ),
      ],
    );
  }
}
