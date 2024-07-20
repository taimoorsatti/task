import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/app/theme/colors.dart';
import 'package:task/app/theme/font.dart';

class AssigmentTutorWidget extends StatelessWidget {
  final String? text;
  final Color? color;
  final Color? borderColor;
  final String? image;
  final Function()? onTap;
  const AssigmentTutorWidget(
      {super.key,
      this.image,
      this.text,
      this.onTap,
      this.color,
      this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 175.h,
          width: 175.w,
          decoration: BoxDecoration(
            color: color ?? Colors.white,
            boxShadow: [
              BoxShadow(
                  color: AppColor.loginBlack.withOpacity(0.5),
                  offset: Offset(2, 2.h),
                  blurRadius: 5.r,
                  spreadRadius: 2.r)
            ],
            border: Border.all(color: borderColor ?? Colors.black, width: 0.5),
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50.r),
                child: Image.asset(
                  image!,
                  width: 72.w,
                  height: 82.h,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                text!,
                style: TextStyle(
                  color: AppColor.whiteColor,
                  fontFamily: AppFont.fontFamily,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
