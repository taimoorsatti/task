import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../app/theme/colors.dart';
import '../../../../../app/theme/font.dart';

class StudentCheckBoxWidget extends StatefulWidget {
  const StudentCheckBoxWidget({super.key});

  @override
  State<StudentCheckBoxWidget> createState() => _StudentCheckBoxWidgetState();
}

class _StudentCheckBoxWidgetState extends State<StudentCheckBoxWidget> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = true;
    return Row(
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
