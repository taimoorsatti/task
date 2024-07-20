import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task/app/theme/font.dart';
import 'package:task/presentation/student/services/widgets/assignment/widgets/deadline.dart';
import 'package:task/presentation/student/services/widgets/assignment/widgets/file_section.dart';
import 'package:task/presentation/student/services/widgets/assignment/widgets/previous.dart';
import 'package:task/presentation/student/services/widgets/assignment/widgets/textfield.dart';

import '../../../../../../app/theme/colors.dart';
import '../../../../../../controllers/student/assignment/assignment_controller.dart';
import '../../../../../common/appbutton.dart';
import '../../tutor/widgets/dropdown.dart';

class AssignmentBody extends StatelessWidget {
  const AssignmentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        const AssignmentTextFieldWidget(),
        SizedBox(
          height: 20.h,
        ),
        const DeadlineDateTimeWidget(),
        SizedBox(
          height: 20.h,
        ),
        const FileSectionWidget(),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0.w),
          child: DropDownWidget(
            text: "Maths",
            subText: "Subject of the Assignment ",
            onTap: () {},
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        AppButton(
          text: "Submit",
          onClick: () {
            Get.find<AssignmentController>().postDataAndUploadFile(
                Get.find<AssignmentController>().file!.path);
          },
          minBtnHeight: 43.h,
          borderRadius: 16.r,
          fontSize: 16.sp,
          fontFamily: AppFont.fontFamily,
          maxBtnHeight: 43.h,
          minimumBtnWidth: 292.w,
          fontWeight: FontWeight.w500,
          color: AppColor.primaryColor,
        ),
        SizedBox(
          height: 10.h,
        ),
        const PreViousWidget(),
      ],
    );
  }
}
