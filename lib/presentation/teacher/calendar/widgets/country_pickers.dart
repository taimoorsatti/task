import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/app/theme/colors.dart';
import 'package:task/app/theme/font.dart';
import 'package:task/utils/appassets.dart';

class CountryPickersWidget extends StatefulWidget {
  const CountryPickersWidget({super.key});

  @override
  State<CountryPickersWidget> createState() => _CountryPickersWidgetState();
}

class _CountryPickersWidgetState extends State<CountryPickersWidget> {
  @override
  String countryValue = "";
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Student Country",
                style: TextStyle(
                  color: AppColor.blackText,
                  fontFamily: AppFont.fontFamily,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Container(
                height: 42.h,
                width: 151.w,
                decoration: BoxDecoration(
                  color: AppColor.textFieldBackGroundColor,
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(12.0.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Pakistan",
                          style: TextStyle(
                            color: AppColor.blackText,
                            fontFamily: AppFont.fontFamily,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Image.asset(
                          AppAssets.downIcon,
                          height: 6.h,
                          width: 9.w,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Your Country",
                style: TextStyle(
                  color: AppColor.blackText,
                  fontFamily: AppFont.fontFamily,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Container(
                height: 42.h,
                width: 151.w,
                decoration: BoxDecoration(
                  color: AppColor.textFieldBackGroundColor,
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(12.0.sp),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (_) {
                              return showStudentCountryDialog();
                            });
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "China",
                            style: TextStyle(
                              color: AppColor.blackText,
                              fontFamily: AppFont.fontFamily,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Image.asset(
                            AppAssets.downIcon,
                            height: 6.h,
                            width: 9.w,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  showStudentCountryDialog() {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: CSCPicker(
          flagState: CountryFlag.ENABLE,
          disabledDropdownDecoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            color: Colors.white,
            border: Border.all(
              color: Colors.grey.shade300,
              width: 1,
            ),
          ),
          dropdownDecoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            color: Colors.white,
            border: Border.all(
              color: Colors.grey.shade300,
              width: 1,
            ),
          ),
          dropdownHeadingStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
          showCities: false,
          showStates: false,
          searchBarRadius: 50,
          defaultCountry: CscCountry.Pakistan,
          countryDropdownLabel: countryValue,
          onCountryChanged: (value) {
            setState(() {
              countryValue = value;
            });
          },
        ),
      ),
    );
  }
}
