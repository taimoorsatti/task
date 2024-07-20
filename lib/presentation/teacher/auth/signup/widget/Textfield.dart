import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task/controllers/auth/login/login_controller.dart';
import 'package:task/presentation/common/custom_dropdown.dart';

import 'package:task/utils/appassets.dart';

import '../../../../../app/theme/colors.dart';
import '../../../../../controllers/auth/signup/signup_controller.dart';
import '../../../../common/apptextfield.dart';

class NameTextField extends StatelessWidget {
  NameTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const AppTextField(
        isDense: true,
        //controller: Get.find<SignUpController>().nameController,
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
    return  AppTextField(
      isDense: true,
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
      controller:Get.find<SignUpController>().phoneController,
      isDense: true,
      hint: "000-00000000",
      title: "Phone Number (optional)",
      textInputType: TextInputType.number,
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
  SignUpController controller = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      isDense: true,
      controller: Get.find<SignUpController>().registerPasswordController,
      isObscure: Get.find<SignUpController>().isShowPassword.value,
      title: "Password*",
      hint: "Enter your password",
      textInputType: TextInputType.text,
      textInputAction: TextInputAction.next,
      suffixIcon: InkWell(
        onTap: () {
          setState(() {
            Get.find<SignUpController>().isShowPassword.value =
                Get.find<SignUpController>().isShowPassword == false
                    ? true
                    : false;
          });
        },
        child: Icon(
          Get.find<SignUpController>().isShowPassword == false
              ? Icons.visibility
              : Icons.visibility_off,
          color: AppColor.greyLight,
        ),
      ),
      //validator: RequiredValidator(errorText: 'Please Enter your email'),
    );
  }
}

class CountryTextField extends StatelessWidget {
  const CountryTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      isDense: true,
      controller: Get.find<SignUpController>().registerCountryController,
      hint: "Select Country",
      title: "Country",
      readOnly: true,
      textInputType: TextInputType.text,
      textInputAction: TextInputAction.next,
      //validator: RequiredValidator(errorText: 'Please Enter your email'),
      suffixIcon: Container(
        transform: Matrix4.translationValues(15.0, 0.0, 0.0),
        child: Padding(
          padding: EdgeInsets.only(top: 20.0.h, bottom: 10.h),
          child: Image.asset(
            AppAssets.dropDown,
            height: 9,
            width: 9,
            color: AppColor.blackText.withOpacity(0.7),
          ),
        ),
      ),
      onTap: (){
        showModalBottomSheet(context: context, builder: (BuildContext c){
          return
            CustomDropDown(

              title: 'countries',
              list: Get.find<LoginController>().listContries,
              height: 700.h,
            );
        });
      },
    );
  }
}

class GenderTextField extends StatefulWidget {
  @override
  State<GenderTextField> createState() => _GenderTextFieldState();
}

class _GenderTextFieldState extends State<GenderTextField> {
  int _selectGender = -1;
  @override
  Widget build(BuildContext context) {
    return AppTextField(
      controller: Get.find<SignUpController>().registerGenderController,
      hint: "Select Gender",
      title: "Gender",
      isDense: true,
      readOnly: true,
      textInputType: TextInputType.text,
      textInputAction: TextInputAction.next,
      //validator: RequiredValidator(errorText: 'Please Enter your email'),
      suffixIcon: Container(
        transform: Matrix4.translationValues(15.0, 0.0, 0.0),
        child: Padding(
          padding: EdgeInsets.only(top: 20.0.h, bottom: 10.h),
          child: Image.asset(
            AppAssets.dropDown,
            height: 9,
            width: 9,
            color: AppColor.blackText.withOpacity(0.7),
          ),
        ),
      ),
      onTap: (){
        _genderModalBottomSheetMenu();
      },
    );
  }
  void _genderModalBottomSheetMenu() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return StatefulBuilder(
            builder: (context, setState) {
              return Container(
                height: 250.0.h,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.r),
                        topRight: Radius.circular(10.r))),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20.sp, left: 10.sp, right: 10.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.close)),
                          const Text(
                            'Gender',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          Text('')
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      thickness: 1,
                      height: 1,
                    ),

                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectGender = 1;
                          Get.find<SignUpController>().registerGenderController.text =
                          "Female";
                          Get.back();
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 18, bottom: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Female',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                )),
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                borderRadius:
                                 BorderRadius.all(Radius.circular(50.r)),
                                color: _selectGender == 1
                                    ? AppColor.primaryColor
                                    : Colors.transparent,
                                border: Border.all(color: Colors.black),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      height: 1,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _selectGender = 2;
                          Get.find<SignUpController>().registerGenderController.text =
                          "Male";
                        });
                        Get.back();
                      },
                      child: Container(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, top: 18, bottom: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Male',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                )),
                            Container(
                              height: 24,
                              width: 24,
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(50)),
                                color: _selectGender == 2
                                    ? AppColor.primaryColor
                                    : Colors.transparent,
                                border: Border.all(color: Colors.black),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    Divider(
                      thickness: 1,
                      height: 1,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                  ],
                ),
              );
            },
          );
        });
  }
}

class CityTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppTextField(
      isDense: true,
      controller: Get.find<SignUpController>().registerNameController,
      hint: "Enter full name",
      title: "Full Name *",
      textInputType: TextInputType.text,
      textInputAction: TextInputAction.next,
      //validator: RequiredValidator(errorText: 'Please Enter your email'),
    );
  }


}
