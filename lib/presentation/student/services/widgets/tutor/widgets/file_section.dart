import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/app/theme/colors.dart';
import 'package:task/app/theme/font.dart';
import 'package:task/utils/appassets.dart';

class FileSectionTutorWidget extends StatefulWidget {
  const FileSectionTutorWidget({super.key});

  @override
  State<FileSectionTutorWidget> createState() => _FileSectionTutorWidgetState();
}

class _FileSectionTutorWidgetState extends State<FileSectionTutorWidget> {
  @override
  String countryValue = "";
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(

        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(15.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],

      ),
      child: Padding(
        padding: EdgeInsets.all(8.0.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "Submit Your File",
                        style: TextStyle(
                          color: AppColor.blackText,
                          fontFamily: AppFont.fontFamily,
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w400,
                        ),
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
                                "Your File",
                                style: TextStyle(
                                  color: AppColor.blackText,
                                  fontFamily: AppFont.fontFamily,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Image.asset(
                                AppAssets.fileIcon,
                                height: 35.h,
                                width: 35.w,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "File Language",
                        style: TextStyle(
                          color: AppColor.blackText,
                          fontFamily: AppFont.fontFamily,
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w400,
                        ),
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
                    ),

                  ],
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,bottom: 8.0),
                  child: Text(
                    "File size up to 100MB",
                    style: TextStyle(
                      color: const Color.fromRGBO(125, 132, 141, 1),
                      fontFamily: AppFont.fontFamily,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            )

          ],
        ),
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
