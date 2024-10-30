import 'package:design_test/modules/chat/view/chat_card/chat_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../routing/routes.dart';
import '../../../utils/colors.dart';
import '../../../widgets/label_widget.dart';

class ChatListView extends StatelessWidget {
  static const String id = "/ChatListView";
  const ChatListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            pinnedChats(),
            25.verticalSpace,
            allChats(),
          ],
        ),
      ),
    );
  }

  pinnedChats() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: LabelWidget(
              text: 'Pinned',
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
              textColor: AlphaColors().thirdTextNew,
              padding: 0,
            ),
          ),
          SizedBox(height: 12.h),
          ChatCard(
            contactName: 'Alphaboard',
            lastMessage: 'Hello, Taimoor! I am creating a design for task.',
            writerName: 'Jane',
            isTyping: false,
            unreadMessages: 3,
          ),
          6.verticalSpace,
          ChatCard(
            imagePath: 'assets/images/person_1_image.png',
            contactName: 'Design Team',
            lastMessage: 'Hello, Can you drop me the link?',
            writerName: 'You',
            isTyping: false,
            isSelected: true,
            unreadMessages: 0,
            onTap: () {
              // Navigator.of(Get.context!).pushNamed(
              //   Routes().getChatDetailsPage(),
              //   arguments: 1,
              // );
              Get.toNamed(Routes().getChatDetailsPage(), id: 1);
              // Get.toNamed(
              //     '${Routes().getHomePage()}${Routes().getChatDetailsPage()}');
            },
          ),
          6.verticalSpace,
          ChatCard(
            imagePath: 'assets/images/person_2_image.png',
            contactName: 'Dustin Williamson',
            lastMessage: 'Hello, Taimoor! I am creating a design for task.',
            writerName: 'Jane',
            isTyping: true,
            unreadMessages: 3,
          ),
        ],
      ),
    );
  }

  allChats() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: LabelWidget(
              text: 'All Messages',
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
              textColor: AlphaColors().thirdTextNew,
              padding: 0,
            ),
          ),
          SizedBox(height: 12.h),
          ChatCard(
            imagePath: 'assets/images/person_1_image.png',
            contactName: 'Jane Wilson',
            lastMessage: 'Hi! How are you, Steve?',
            isTyping: false,
            unreadMessages: 0,
          ),
          6.verticalSpace,
          ChatCard(
            imagePath: 'assets/images/person_2_image.png',
            contactName: 'Brandon Pena',
            lastMessage: 'How about going somew...',
            isTyping: false,
            unreadMessages: 0,
          ),
          6.verticalSpace,
          ChatCard(
            contactName: 'Nathan Fox',
            lastMessage: 'Hello. We have a meeting...',
            isTyping: false,
            unreadMessages: 0,
          ),
          6.verticalSpace,
          ChatCard(
            contactName: 'Jacob Hawkins',
            lastMessage: 'Well done!',
            isTyping: false,
            unreadMessages: 1,
          ),
          6.verticalSpace,
          ChatCard(
            contactName: 'Shane Black',
            lastMessage: 'Paul\'s having a party tom...',
            isTyping: false,
            unreadMessages: 0,
          ),
        ],
      ),
    );
  }
}
