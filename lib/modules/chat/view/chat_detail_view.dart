import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/colors.dart';
import '../../../widgets/label_widget.dart';
import 'chat_card/chat_details_card.dart';

class ChatDetailsView extends StatelessWidget {
  static const String id = "/ChatDetailsView";
  const ChatDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          body: Column(
            children: [
              appBar(),
              Expanded(
                child: Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  decoration: BoxDecoration(
                    color: AlphaColors().white,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Stack(
                    children: [
                      chatList(),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 130.h,
                          decoration: BoxDecoration(
                            color: AlphaColors().white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16.r),
                              bottomRight: Radius.circular(16.r),
                            ),
                          ),
                          child: writeMessageWidget(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  appBar() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      decoration: BoxDecoration(
        color: AlphaColors().backgroundColor,
        border: Border(
          bottom: BorderSide(
            color: AlphaColors().grayNew,
            width: 0.5,
          ),
        ),
      ),
      child: Row(
        children: [
          IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: AlphaColors().black,
            ),
            onPressed: () {
              Get.back(id: 1);
            },
          ),
          SizedBox(width: 2.w),
          Image.asset(
            'assets/images/avatar.png',
            height: 40.h,
          ),
          SizedBox(width: 15.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LabelWidget(
                text: 'Design Team',
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
                textColor: AlphaColors().secTextNew,
                padding: 0,
              ),
              3.verticalSpace,
              LabelWidget(
                text: '6 Members, 3 Online',
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
                textColor: AlphaColors().thirdTextNew,
                padding: 0,
              ),
            ],
          ),
          const Spacer(),
          Container(
            height: 40.h,
            width: 40.h,
            decoration: BoxDecoration(
              color: AlphaColors().grayLight,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Image.asset(
              'assets/images/more_icon.png',
              height: 22.h,
              width: 22.h,
            ),
          ),
          13.horizontalSpace,
        ],
      ),
    );
  }

  chatList() {
    return ListView.separated(
      padding: EdgeInsets.only(
        left: 16.w,
        right: 16.w,
        top: 16.h,
        bottom: 150.h,
      ),
      itemCount: 4,
      itemBuilder: (context, index) {
        return ChatDetailsCard(
          writerName: 'Jane Wilson',
          message: 'Hey, how are you?',
          time: '10:43',
          isMyMessage: index == 3 || index == 5,
        );
      },
      separatorBuilder: (context, index) => 16.verticalSpace,
    );
  }

  writeMessageWidget() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            border: Border.all(
              color: AlphaColors().grayNew,
              width: 0.5,
            ),
          ),
          child: Row(
            children: [
              Container(
                height: 40.h,
                width: 40.h,
                decoration: BoxDecoration(
                  color: AlphaColors().unSelectedChatPinnedColor,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Image.asset('assets/images/avatar.png'),
              ),
              16.horizontalSpace,
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Type a message...',
                    hintStyle: TextStyle(
                      color: AlphaColors().thirdTextNew,
                      fontSize: 15.sp,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              16.horizontalSpace,
              Container(
                height: 40.h,
                width: 40.h,
                decoration: BoxDecoration(
                  color: AlphaColors().unSelectedChatPinnedColor,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Image.asset('assets/images/send_icon.png'),
              ),
            ],
          ),
        ),
        16.verticalSpace,
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            children: [
              Container(
                height: 40.h,
                width: 40.h,
                padding: EdgeInsets.all(8.h),
                decoration: BoxDecoration(
                  color: AlphaColors().unSelectedChatPinnedColor,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Image.asset(
                  'assets/images/smile_icon.png',
                  height: 16.h,
                  width: 16.h,
                ),
              ),
              12.horizontalSpace,
              Container(
                height: 40.h,
                width: 40.h,
                padding: EdgeInsets.all(8.h),
                decoration: BoxDecoration(
                  color: AlphaColors().unSelectedChatPinnedColor,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Image.asset(
                  'assets/images/attachment_icon.png',
                  height: 16.h,
                  width: 16.h,
                ),
              ),
              12.horizontalSpace,
              Container(
                height: 40.h,
                width: 40.h,
                padding: EdgeInsets.all(8.h),
                decoration: BoxDecoration(
                  color: AlphaColors().unSelectedChatPinnedColor,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Image.asset(
                  'assets/images/image_icon.png',
                  height: 16.h,
                  width: 16.h,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
