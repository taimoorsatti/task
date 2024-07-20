import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task/app/theme/colors.dart';
import 'package:task/app/theme/font.dart';
import 'package:task/controllers/teacher/groupchat_controller.dart';
import 'package:task/presentation/common/appbar.dart';
import 'package:task/presentation/common/new_navbar.dart';
import 'package:task/controllers/teacher/ChatScreeController.dart';
import 'package:task/presentation/teacher/Chat/widgets/ListComponent.dart';
import 'package:task/presentation/teacher/Chat/widgets/TopHeader.dart';
import 'package:task/presentation/teacher/Chat/widgets/top_widget.dart';
import 'package:task/presentation/teacher/groups/group_view.dart';
import 'package:task/utils/appassets.dart';

import '../../common/apptextField2.dart';
import '../groups/Components/ListComponent.dart';

class ChatView extends StatefulWidget {
  @override
  _ChatViewState createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  @override
  Widget build(BuildContext context) {
    GroupChatScreenController controllerGroup=Get.put(GroupChatScreenController());
    return GetBuilder(
      init: ChatScreenController(),
      builder: (ChatScreenController controller) {
        return Scaffold(
          backgroundColor: const Color(0xffF5F4F4),
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Obx(
                  ()=>
                   Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 110.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0.w),
                        child: const NotificationWidget(),
                      ),
                      SizedBox(
                        height: 20.h,
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
                      Get.find<ChatScreenController>().activeNeed.value == 0
                          ? ListView.builder(
                        itemCount: controllerGroup.groupChatUsers.length,
                        shrinkWrap: true,
                        padding: const EdgeInsets.only(top: 16),
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return GroupConversationList(
                            name: controllerGroup.groupChatUsers[index].name!,
                            messageText:
                            controllerGroup.groupChatUsers[index].messageText!,
                            imageUrl: controllerGroup.groupChatUsers[index].imageURL!,
                            time: controllerGroup.groupChatUsers![index].time!,
                            isMessageRead:
                            (index == 0 || index == 3) ? true : false,
                          );
                        },
                      )
                          : ListView.builder(
                              itemCount: controller.chatUsers.length,
                              shrinkWrap: true,
                              padding: EdgeInsets.only(top: 10.h),
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return ConversationList(
                                  name: controller.chatUsers[index].name!,
                                  messageText:
                                      controller.chatUsers[index].messageText!,
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
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      color: AppColor.whiteColor,
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
                                width: 5.w,
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
          bottomNavigationBar: MyNavBar(selectedMenu: MenuState.chat),
        );
      },
    );
  }
}
