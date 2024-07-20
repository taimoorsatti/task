import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task/app/theme/colors.dart';
import 'package:task/app/theme/font.dart';
import 'package:task/presentation/common/appbar.dart';
import 'package:task/presentation/common/new_navbar.dart';
import 'package:task/controllers/teacher/ChatScreeController.dart';
import 'package:task/presentation/teacher/Chat/widgets/ListComponent.dart';
import 'package:task/presentation/teacher/Chat/widgets/TopHeader.dart';
import 'package:task/utils/appassets.dart';

import '../../common/apptextField2.dart';

class StudentChatView extends StatefulWidget {
  @override
  _StudentChatViewState createState() => _StudentChatViewState();
}

class _StudentChatViewState extends State<StudentChatView> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ChatScreenController(),
      builder: (ChatScreenController controller) {
        return Scaffold(
          backgroundColor: const Color(0xffF5F4F4),
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 110.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0.w),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset:
                              Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: AppTextField2(
                          height: 50.h,
                          hint: 'Search by name',
                          textInputType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(
                                left: 10.sp, right: 10.sp, bottom: 0.h),
                            child: Image.asset(AppAssets.search,
                                height: 20.h,
                                width: 20.w,
                                color: AppColor.primaryColor),
                          ),
                        ),
                      ),
                    ),
                    ListView.builder(
                      itemCount: controller.chatUsers.length,
                      shrinkWrap: true,
                      padding: const EdgeInsets.only(top: 16),
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return ConversationList(
                          name: controller.chatUsers[index].name!,
                          messageText: controller.chatUsers[index].messageText!,
                          imageUrl: controller.chatUsers[index].imageURL!,
                          time: controller.chatUsers![index].time!,
                          isMessageRead:
                              (index == 0 || index == 3) ? true : false,
                        );
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                AppAssets.applogo,
                                width: 223.w,
                                height: 73.h,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                AppAssets.notification,
                                width: 24.w,
                                height: 24.h,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              const Icon(Icons.more_vert),
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
          bottomNavigationBar:
              MyNavBarStudent(selectedMenuStudent: MenuStateStudent.chat),
        );
      },
    );
  }
}
