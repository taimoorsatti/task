import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../app/theme/colors.dart';
import '../../../../../app/theme/font.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = true;
    return   Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
            checkColor: Colors.white,
            activeColor: AppColor.primaryColor,
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });



          }),

        Text(
          "Read Privacy Policy",
          style: TextStyle(
            color: AppColor.blueColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            fontFamily: AppFont.fontFamily,
          ),
        ),
      ],
    );
}
}