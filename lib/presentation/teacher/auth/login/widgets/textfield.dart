import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task/controllers/auth/login/login_controller.dart';

import '../../../../../app/theme/colors.dart';
import '../../../../common/apptextfield.dart';

class TeacherEmailTextField extends StatelessWidget {
  TeacherEmailTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AppTextField(
      controller: Get.find<LoginController>().emailController,
      hint: "Enter your email",
      title: "Email",
      textInputType: TextInputType.text,
      textInputAction: TextInputAction.next,

    );
  }
}

class TeacherpasswordTextField extends StatefulWidget {
  TeacherpasswordTextField({Key? key}) : super(key: key);

  @override
  State<TeacherpasswordTextField> createState() => _TeacherpasswordTextFieldState();
}

class _TeacherpasswordTextFieldState extends State<TeacherpasswordTextField> {
  @override
  Widget build(BuildContext context) {
    return AppTextField(
      controller: Get.find<LoginController>().passwordController,
      isObscure: Get.find<LoginController>().isShowPassword.value,
      title: "Password",
      hint: "Enter your password",
      textInputType: TextInputType.text,
      textInputAction: TextInputAction.next,
      suffixIcon: GestureDetector(
        onTap: () {
          setState(() {
            Get.find<LoginController>().isShowPassword.value =
            Get.find<LoginController>().isShowPassword.value == false
                ? true
                : false;
          });
        },
        child:
        Icon(
          Get.find<LoginController>().isShowPassword.value == false
              ? Icons.visibility
              : Icons.visibility_off,
          color: AppColor.greyLight,
        ),
      ),

      //validator: RequiredValidator(errorText: 'Please Enter your email'),
    );
  }
}
