import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task/controllers/student/assignment/assignment_controller.dart';
import 'package:task/presentation/student/services/widgets/assignment/widgets/body.dart';
import 'package:task/utils/appassets.dart';

import '../../../../../app/theme/colors.dart';
import '../../../../../app/theme/font.dart';
import '../../../../common/new_navbar.dart';

class AssignmentViewScreen extends StatelessWidget {
  const AssignmentViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AssignmentController controller=Get.put(AssignmentController());
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 2,
                ),
                Image.asset(
                  AppAssets.assigmentimage,
                  width: 45.w,
                  height: 42.h,
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Assignment / project",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: AppFont.fontFamily,
                            color: AppColor.blackText,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                const Icon(Icons.more_vert),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar:
          MyNavBarStudent(selectedMenuStudent: MenuStateStudent.service),
      body: SingleChildScrollView(child: const AssignmentBody()),
    ));
  }
}
