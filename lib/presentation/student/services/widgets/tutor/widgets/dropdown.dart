import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../app/theme/colors.dart';
import '../../../../../../app/theme/font.dart';
import '../../../../../../utils/appassets.dart';

class DropDownWidget extends StatelessWidget {
  String ?subText;
  Function()? onTap;
  String ?text;


   DropDownWidget({super.key,this.text,this.subText,this.onTap});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
        height: 62.h,
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],

        ),
        child: Padding(
          padding:  EdgeInsets.only(left: 15.0.w,right: 15.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                subText??"",
                style: TextStyle(
                  color: Color.fromRGBO(27, 30, 40, 0.7),
                  fontFamily: AppFont.fontFamily,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 10.h,),
              Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text??"",
                    style: TextStyle(
                      color: AppColor.blackText,
                      fontFamily: AppFont.fontFamily,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: GestureDetector(
                      onTap: onTap,
                      child: Image.asset(
                        AppAssets.downIcon,
                        height: 8.h,
                        width: 13.w,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
