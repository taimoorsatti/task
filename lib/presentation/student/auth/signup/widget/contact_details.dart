import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../app/theme/colors.dart';
import '../../../../../app/theme/font.dart';
import '../../../../common/apptextfield.dart';

class StudentContactDetails extends StatelessWidget {
  const StudentContactDetails({super.key});

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
              "Contact Details",
              style: TextStyle(
                color: AppColor.blackTextSignup,
                fontFamily: AppFont.fontFamily,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            const AppTextField(
              hint: 'Email',
              textInputType: TextInputType.text,
              textInputAction: TextInputAction.next,

            ),
            SizedBox(height: 5.h),
            const AppTextField(
              hint: 'Phone(optional)',
              textInputType: TextInputType.text,
              textInputAction: TextInputAction.next,
            ),
          ],
        ),
      ),
    );
  }
}
