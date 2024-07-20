import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../app/theme/colors.dart';
import '../../../../../controllers/auth/signup/signup_controller.dart';
import '../../../../common/apptextfield.dart';


class NameTextField extends StatelessWidget {
  NameTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppTextField(
        controller: Get.find<SignUpController>().registerUserNameController,
        hint: "john",
        title: "Enter Username",
        textInputType: TextInputType.text,
        textInputAction: TextInputAction.next,
        //validator: RequiredValidator(errorText: 'Please Enter your email'),
      ),
    );
  }
}

class EmailTextField extends StatelessWidget {
  EmailTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      controller: Get.find<SignUpController>().registerEmailController,
      hint: "Enter your email",
      title: "Your Email*",
      textInputType: TextInputType.text,
      textInputAction: TextInputAction.next,
      //validator: RequiredValidator(errorText: 'Please Enter your email'),
    );
  }
}

class PhoneNumTextField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  AppTextField(
      controller: Get.find<SignUpController>().phoneController,
      hint: "*********",
      title: "Phone Number *",
      textInputType: TextInputType.phone,
      textInputAction: TextInputAction.next,
      //validator: RequiredValidator(errorText: 'Please Enter your email'),
    );
  }
}


class passwordTextField extends StatefulWidget {
  passwordTextField({Key? key}) : super(key: key);

  @override
  State<passwordTextField> createState() => _passwordTextFieldState();
}

class _passwordTextFieldState extends State<passwordTextField> {
  @override
  Widget build(BuildContext context) {
    return AppTextField(
      controller: Get.find<SignUpController>().registerPasswordController,
      isObscure: Get.find<SignUpController>().isShowPassword.value,
      title: "Password*",
      hint: "Enter your password",
      textInputType: TextInputType.text,
      textInputAction: TextInputAction.next,
      suffixIcon: GestureDetector(
        onTap: () {
          setState(() {
            Get.find<SignUpController>().isShowPassword.value=
                Get.find<SignUpController>().isShowPassword == false
                    ? true
                    : false;
          });
        },
            child:
                Icon(
                Get.find<SignUpController>().isShowPassword == false
                    ? Icons.visibility
                    : Icons.visibility_off,
                      color: AppColor.blackText.withOpacity(0.7),
                ),
      ),
      //validator: RequiredValidator(errorText: 'Please Enter your email'),
    );
  }
}




class CityTextField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      controller: Get.find<SignUpController>().registerPasswordController,
      hint: "Select your city",
      title: "Select City *",
      textInputType: TextInputType.text,
      textInputAction: TextInputAction.next,
      //validator: RequiredValidator(errorText: 'Please Enter your email'),
    );
  }
}