import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/app/theme/colors.dart';

import '../../../../../../app/theme/font.dart';

class ShiftContainor extends StatelessWidget {
  String ?image;
  String ?text;
  ShiftContainor({super.key,this.text,this.image});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 46.h,width: 70.w,
      decoration: BoxDecoration(
        color: AppColor.greyLight.withOpacity(0.3),
          borderRadius: BorderRadius.circular(5.r),


      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image!,height:24.h,width:24.w,color: AppColor.blackText,),
          Text(
            text??"",
            style: TextStyle(
              color: AppColor.blackText,
              fontFamily: AppFont.fontFamily,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}



class DaysContainor extends StatelessWidget {

  String ?text;
  DaysContainor({super.key,this.text});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 22.h,width: 60.w,
      decoration: BoxDecoration(
        color: AppColor.greyLight.withOpacity(0.3),
        borderRadius: BorderRadius.circular(5.r),


      ),
      child: Center(
        child: Text(
          text??"",
          style: TextStyle(
            color: AppColor.blackText,
            fontFamily: AppFont.fontFamily,
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}