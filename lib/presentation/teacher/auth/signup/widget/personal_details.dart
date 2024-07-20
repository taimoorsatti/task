import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../app/theme/colors.dart';
import '../../../../../app/theme/font.dart';
import '../../../../common/apptextfield.dart';
import 'Textfield.dart';

class PersonalInfoDetails extends StatelessWidget {
  const PersonalInfoDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Personal Details",
          style: TextStyle(
            color: AppColor.blackTextSignup,
            fontFamily: AppFont.fontFamily,
            fontSize: 13.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 3.h,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            border: Border.all(color: AppColor.greyLight, width: 0.3),
          ),
          child: Padding(
            padding:  EdgeInsets.only(left: 15.0.w,right: 15.w,bottom: 15.h,top: 5.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               const SizedBox(height: 10,),
                CityTextField(),
                SizedBox(height: 30.h),
                Row(
                  children: [
                    Expanded(child: GenderTextField()),
                    SizedBox(width: 20.w,),
                    const Expanded(child: CountryTextField()),


                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
