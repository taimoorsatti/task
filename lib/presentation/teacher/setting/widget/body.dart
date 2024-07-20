import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task/app/theme/colors.dart';
import 'package:task/presentation/teacher/setting/widget/top_widget.dart';
import 'package:task/routing/routes.dart';

import '../../../../app/theme/font.dart';
import '../../../../utils/appassets.dart';
import 'list_widget.dart';

class SettingBody extends StatelessWidget {
  const SettingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: Get.height,
          width: Get.width,
          color: AppColor.primaryColor,
          child: Column(
            children: [

              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                      color: AppColor.whiteColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(0.r),
                          topRight: Radius.circular(0.r)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 5.h,),
                        // Center(
                        //     child: Container(
                        //   height: 5.h,
                        //   width: 40.w,
                        //   decoration: BoxDecoration(
                        //       color: Colors.grey.withOpacity(0.3),
                        //     borderRadius: BorderRadius.circular(15),
                        //   ),
                        // )),
                        SizedBox(
                          height: 50.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                          child: const TopWidgetSetting(),
                        ),
                       SizedBox(
                          height: 20.h,
                        ),
                        Container(
                          height: 1,
                          width: double.infinity,
                          color: Colors.grey.withOpacity(0.3),
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        Expanded(
                          child: ListView(
                            children: [
                              ListWidgetSetting(
                                name: "Account",
                                text: "Privacy, security, change number",
                                image: AppAssets.keys,
                                onTap: (){

                                },
                              ),
                              SizedBox(
                                height: 25.h,
                              ),
                              ListWidgetSetting(
                                name: "Payment Method",
                                text: "add card details for payment",
                                image: AppAssets.card,
                                onTap: (){
                                 Get.toNamed(AppRoutes.addcard);
                                },
                              ),
                              SizedBox(
                                height: 25.h,
                              ),
                              ListWidgetSetting(
                                name: "Chat",
                                text: "Chat history,theme,wallpapers",
                                image: AppAssets.message,
                              ),
                              SizedBox(
                                height: 25.h,
                              ),
                              ListWidgetSetting(
                                name: "Notifications",
                                text: "Messages, group and others",
                                image: AppAssets.notifications,
                              ),
                              SizedBox(
                                height: 25.h,
                              ),
                              ListWidgetSetting(
                                name: "Help",
                                text: "Help center,contact us, privacy policy",
                                image: AppAssets.helpIcon,
                              ),
                              SizedBox(
                                height: 25.h,
                              ),
                              ListWidgetSetting(
                                name: "Invite a friend",
                                text: "Help center,contact us",
                                image: AppAssets.friend,
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
              )
            ],
          ),
        ),
      ],
    );
  }
}
