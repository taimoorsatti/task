import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../app/theme/colors.dart';
import '../../../../../app/theme/font.dart';
import '../../../../../utils/appassets.dart';
import '../../../../common/apptextfield.dart';

class StudentLoginTextFieldWidget extends StatelessWidget {
  const StudentLoginTextFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "username",
              style: TextStyle(
                color: AppColor.blackText,
                fontFamily: AppFont.fontFamily,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            const AppTextField(
              hint: '',
              textInputType: TextInputType.text,
              textInputAction: TextInputAction.next,
            ),
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "password",
              style: TextStyle(
                color: AppColor.blackText,
                fontFamily: AppFont.fontFamily,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            const AppTextField(
              hint: '',
              textInputType: TextInputType.text,
              isObscure: true,
              textInputAction: TextInputAction.next,

            ),
          ],
        ),
      ],
    );
  }
}
