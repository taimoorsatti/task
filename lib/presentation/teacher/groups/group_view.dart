import 'package:flutter/material.dart';
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
import 'package:task/presentation/teacher/groups/Components/ListComponent.dart';
import 'package:task/utils/appassets.dart';

class GroupsChatView extends StatefulWidget {
  const GroupsChatView({super.key});

  @override
  State<GroupsChatView> createState() => _GroupsChatViewState();
}

class _GroupsChatViewState extends State<GroupsChatView> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: GroupChatScreenController(),
      builder: (GroupChatScreenController controller) {
        return ListView.builder(
          itemCount: controller.groupChatUsers.length,
          shrinkWrap: true,
          padding: const EdgeInsets.only(top: 16),
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return GroupConversationList(
              name: controller.groupChatUsers[index].name!,
              messageText:
              controller.groupChatUsers[index].messageText!,
              imageUrl: controller.groupChatUsers[index].imageURL!,
              time: controller.groupChatUsers![index].time!,
              isMessageRead:
              (index == 0 || index == 3) ? true : false,
            );
          },
        );
      },
    );
    ;
  }
}
