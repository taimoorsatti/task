import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:task/presentation/student/auth/otp/widget/body.dart';

import '../../../../app/theme/colors.dart';
import '../../../../controllers/auth/otp/top_controller.dart';

class OtpViewScreen extends StatelessWidget {
  const OtpViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    OtpController controller=Get.put(OtpController());
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.whiteColor,
        body:SingleChildScrollView(child: OTPBody()),
      ),
    );
  }
}
