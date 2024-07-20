import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task/controllers/auth/login/login_controller.dart';
import 'package:task/controllers/auth/signup/signup_controller.dart';
import 'package:task/models/all_countries.dart';

import '../../app/theme/colors.dart';

class CustomDropDown extends StatefulWidget {
  final Function()? onTap;
  var controller;
  final String? title;
  final List<dynamic>? list;
  final double? height;
  var text;

  CustomDropDown(
      {this.title,
      this.list,
      this.onTap,
      this.controller,
      this.height,
      this.text});

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}


class _CustomDropDownState extends State<CustomDropDown> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      int val=1;
    });
  }
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        return Container(
          height: widget.height ?? 300.h,
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
                    Text(
                      widget.title!,
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.w700),
                    ),
                    Text('')
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: Get.find<LoginController>().listContries.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          // SizedBox(
                          //   height: 10,
                          // ),
                          // Divider(
                          //   thickness: 1,
                          //   height: 1,
                          // ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                Get.find<SignUpController>()
                                    .selectedIndex
                                    .value = index;
                                Get.find<SignUpController>()
                                    .registerCountryController
                                    .text = widget.list?[index].country!;
                              });
                              Get.back();
                            },
                            child: Container(
                              padding: EdgeInsets.only(
                                  left: 10.sp,
                                  right: 10.sp,
                                  top: 18.sp,
                                  bottom: 18.sp),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(widget.list?[index].country!,
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                      )),
                                  Container(
                                    height: 24.h,
                                    width: 24.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50.r)),
                                      color: Get.find<SignUpController>()
                                                  .selectedIndex
                                                  .value ==
                                              index
                                          ? AppColor.primaryColor
                                          : Colors.transparent,
                                      border: Border.all(color: Colors.black54),
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
                        ],
                      );
                    }),
              ),
            ],
          ),
        );
      },
    );
  }
}
