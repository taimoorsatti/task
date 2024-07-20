import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../app/theme/colors.dart';
import '../../../../../app/theme/font.dart';
import '../../../../common/apptextfield.dart';

class StudentLoginDetailsSignUp extends StatelessWidget {
  const StudentLoginDetailsSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(color: AppColor.greyLight, width: 0.5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Set Login Details",
              style: TextStyle(
                color: AppColor.blackTextSignup,
                fontFamily: AppFont.fontFamily,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            const AppTextField(
              hint: 'username',
              textInputType: TextInputType.text,
              textInputAction: TextInputAction.next,

            ),
            SizedBox(
              height: 10.h,
            ),
            const AppTextField(
              hint: '**********',
              textInputType: TextInputType.text,
              textInputAction: TextInputAction.next,
            ),
          ],
        ),
      ),
    );
  }
}
