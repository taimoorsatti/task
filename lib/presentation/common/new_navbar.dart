import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../app/theme/colors.dart';
import '../../app/theme/font.dart';
import '../../routing/routes.dart';
import '../../utils/appassets.dart';
import '../../utils/appstring.dart';

// ignore: must_be_immutable
class MyNavBar extends StatefulWidget {
  MyNavBar({
    super.key,
    required this.selectedMenu,
  });

  MenuState selectedMenu;

  @override
  State<MyNavBar> createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  late MenuState currentMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.sp),
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.r),
          topRight: Radius.circular(25.r),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: InkWell(
                      onTap: () {
                        Get.offNamed(AppRoutes.help);
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            AppAssets.helpIcon,
                            height: 24.h,
                            width: 28.w,
                            color: MenuState.help == widget.selectedMenu
                                ? AppColor.primaryColor
                                : AppColor.greyNav,
                          ),
                          SizedBox(
                            height: 7.h,
                          ),
                          Text(
                            "Help",
                            style: TextStyle(
                              fontSize: 8.sp,
                              fontWeight: MenuState.help == widget.selectedMenu
                                  ? FontWeight.w700
                                  : FontWeight.w500,
                              fontFamily: AppFont.fontFamily,
                              color: MenuState.help == widget.selectedMenu
                                  ? AppColor.primaryColor
                                  : AppColor.greyNav,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.offNamed(AppRoutes.chat);
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          AppAssets.chatIcon,
                          height: 26.h,
                          width: 25.w,
                          color: MenuState.chat == widget.selectedMenu
                              ? AppColor.primaryColor
                              : AppColor.greyLight,
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Text(
                          "Chats",
                          style: TextStyle(
                            fontSize: 8.sp,
                            fontWeight: MenuState.chat == widget.selectedMenu
                                ? FontWeight.w700
                                : FontWeight.w500,
                            fontFamily: AppFont.fontFamily,
                            color: MenuState.chat == widget.selectedMenu
                                ? AppColor.primaryColor
                                : AppColor.greyNav,
                          ),
                        ),
                      ],
                    ),
                  ),

                  InkWell(
                    onTap: () {
                      Get.offNamed(AppRoutes.calendar);
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          AppAssets.calenderIcon,
                          height: 20.h,
                          width: 20.w,
                          color: MenuState.calender == widget.selectedMenu
                              ? AppColor.primaryColor
                              : AppColor.greyLight,
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Text(
                          "Calendar",
                          style: TextStyle(
                            fontSize: 8.sp,
                            fontWeight:
                                MenuState.calender == widget.selectedMenu
                                    ? FontWeight.w700
                                    : FontWeight.w500,
                            fontFamily: AppFont.fontFamily,
                            color: MenuState.calender == widget.selectedMenu
                                ? AppColor.primaryColor
                                : AppColor.greyNav,
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.offNamed(AppRoutes.setting);
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          AppAssets.setting,
                          height: 24.h,
                          width: 24.w,
                          color: MenuState.setting == widget.selectedMenu
                              ? AppColor.primaryColor
                              : AppColor.greyLight,
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Text(
                          "Setting",
                          style: TextStyle(
                            fontSize: 8.sp,
                            fontWeight:
                            MenuState.setting == widget.selectedMenu
                                ? FontWeight.w700
                                : FontWeight.w500,
                            fontFamily: AppFont.fontFamily,
                            color: MenuState.setting == widget.selectedMenu
                                ? AppColor.primaryColor
                                : AppColor.greyNav,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}

enum MenuState { help, chat, calender,setting }

class MyNavBarStudent extends StatefulWidget {
  MyNavBarStudent({
    super.key,
    required this.selectedMenuStudent,
  });

  MenuStateStudent selectedMenuStudent;

  @override
  State<MyNavBarStudent> createState() => _MyNavBarStudentState();
}

class _MyNavBarStudentState extends State<MyNavBarStudent> {
  late MenuState currentMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15.sp),
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.r),
            topRight: Radius.circular(25.r),
          ),
        ),
      child: SafeArea(
          top: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: InkWell(
                      onTap: () {
                        Get.offNamed(AppRoutes.offers);
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            AppAssets.giftIcon,
                            height: 24.h,
                            width: 24.w,
                            color: MenuStateStudent.offer ==
                                    widget.selectedMenuStudent
                                ? AppColor.primaryColor
                                : AppColor.greyNav,
                          ),
                          SizedBox(
                            height: 7.h,
                          ),
                          Text(
                            "Offers",
                            style: TextStyle(
                              fontSize: 8.sp,
                              fontWeight: MenuStateStudent.offer ==
                                      widget.selectedMenuStudent
                                  ? FontWeight.w700
                                  : FontWeight.w500,
                              fontFamily: AppFont.fontFamily,
                              color: MenuStateStudent.offer ==
                                      widget.selectedMenuStudent
                                  ? AppColor.primaryColor
                                  : AppColor.greyNav,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.offNamed(AppRoutes.studentchat);
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          AppAssets.chatIcon,
                          height: 26.h,
                          width: 25.w,
                          color: MenuStateStudent.chat ==
                                  widget.selectedMenuStudent
                              ? AppColor.primaryColor
                              : AppColor.greyLight,
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Text(
                          "Chats",
                          style: TextStyle(
                            fontSize: 8.sp,
                            fontWeight: MenuStateStudent.chat ==
                                    widget.selectedMenuStudent
                                ? FontWeight.w700
                                : FontWeight.w500,
                            fontFamily: AppFont.fontFamily,
                            color: MenuStateStudent.chat ==
                                    widget.selectedMenuStudent
                                ? AppColor.primaryColor
                                : AppColor.greyNav,
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.offAllNamed(AppRoutes.homeStudent);
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          AppAssets.homeIcon,
                          height: 23.h,
                          width: 27.w,
                          color: MenuStateStudent.home ==
                                  widget.selectedMenuStudent
                              ? AppColor.primaryColor
                              : AppColor.greyLight,
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                            fontSize: 8.sp,
                            fontWeight: MenuStateStudent.home ==
                                    widget.selectedMenuStudent
                                ? FontWeight.w700
                                : FontWeight.w500,
                            fontFamily: AppFont.fontFamily,
                            color: MenuStateStudent.home ==
                                    widget.selectedMenuStudent
                                ? AppColor.primaryColor
                                : AppColor.greyNav,
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.offNamed(AppRoutes.service1);
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          AppAssets.serviceIcon,
                          height: 24.h,
                          width: 24.w,
                          color: MenuStateStudent.service ==
                                  widget.selectedMenuStudent
                              ? AppColor.primaryColor
                              : AppColor.greyLight,
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Text(
                          "Services",
                          style: TextStyle(
                            fontSize: 8.sp,
                            fontWeight: MenuStateStudent.service ==
                                    widget.selectedMenuStudent
                                ? FontWeight.w700
                                : FontWeight.w500,
                            fontFamily: AppFont.fontFamily,
                            color: MenuStateStudent.service ==
                                    widget.selectedMenuStudent
                                ? AppColor.primaryColor
                                : AppColor.greyNav,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}

enum MenuStateStudent { offer, chat, home, service }
