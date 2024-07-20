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
          color: AppColor.whiteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(15.r),
          //border: Border.all(color: AppColor.greyLight.withOpacity(0.5), width: 0.5),
        ),
        child: Padding(
          padding: EdgeInsets.only(bottom: 30.0.h,left: 10,right: 10),
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
                hint: 'Description',
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
