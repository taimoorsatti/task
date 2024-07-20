import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/theme/colors.dart';
import '../../../../app/theme/font.dart';

class FilterButton extends StatelessWidget {
  final Function? onTap;
  int? index;

  FilterButton({super.key, this.index, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 35.h,
            width: 120.w,
            decoration: BoxDecoration(
              color: index == 0 ? AppColor.primaryColor : AppColor.whiteColor,

              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(color: AppColor.greyColor.withOpacity(0.5)),
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.grey.withOpacity(0.3),
              //     spreadRadius: 1,
              //     blurRadius: 3,
              //     offset: Offset(0, 2), // changes position of shadow
              //   ),
              // ],
            ),
            child: Center(
              child: Text(
                index == 0
                    ? "Maths 15"
                    : index == 1
                        ? "Chemistry 25"
                        : index == 2
                            ? "Physics 10"
                            : "",
                style: TextStyle(
                    fontSize: 12.sp,
                    color: AppColor.blackText,
                    fontFamily: AppFont.fontFamily,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
