import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/app/theme/colors.dart';
import 'package:task/app/theme/font.dart';
import 'package:task/presentation/common/apptextfield.dart';

class AssignmentTextFieldWidget extends StatelessWidget {
  const AssignmentTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(color: AppColor.greyLight, width: 0.5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTextField(
                hint: 'Title of meeting',
                textInputType: TextInputType.text,
                textInputAction: TextInputAction.next,

              ),
              SizedBox(height: 5.h),
              AppTextField(
                hint: 'Description (optional)',
                textInputType: TextInputType.text,
                textInputAction: TextInputAction.next,

              ),
            ],
          ),
        ),
      ),
    );
  }
}
