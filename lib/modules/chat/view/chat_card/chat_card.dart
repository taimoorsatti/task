// ignore_for_file: must_be_immutable

import 'package:design_test/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatCard extends StatelessWidget {
  String? contactName;
  String? lastMessage;
  bool? isTyping;
  String? writerName;
  int? unreadMessages;
  String? imagePath;
  bool? isOnline;
  bool isSelected;
  Function()? onTap;

  ChatCard({
    super.key,
    this.contactName,
    this.lastMessage,
    this.isTyping,
    this.writerName,
    this.unreadMessages,
    this.imagePath,
    this.isOnline,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 92.h,
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        decoration: BoxDecoration(
          color: isSelected
              ? AlphaColors().white
              : AlphaColors().unSelectedChatPinnedColor,
          borderRadius: BorderRadius.circular(14.r),
        ),
        child: Row(
          children: [
            Container(
              height: 48.h,
              width: 48.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(imagePath ?? 'assets/images/avatar.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    contactName ?? 'Test User',
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      color: AlphaColors().secTextNew,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    children: [
                      (isTyping ?? false)
                          ? Row(
                              children: [
                                Image.asset(
                                  'assets/images/typing_pen_icon.png',
                                  height: 16.h,
                                  width: 16.h,
                                ),
                                SizedBox(width: 8.w),
                                Text(
                                  'Dustin is typing...',
                                  style: TextStyle(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w400,
                                    color: AlphaColors().darkTextNew,
                                  ),
                                ),
                              ],
                            )
                          : Expanded(
                              child: Row(
                                children: [
                                  Text(
                                    writerName != null ? '$writerName: ' : '',
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500,
                                      color: AlphaColors().chatNormalTextNew,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      lastMessage ?? 'No messages',
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w400,
                                        color: AlphaColors().chatNormalTextNew,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                      SizedBox(width: 8.w),
                    ],
                  ),
                ],
              ),
            ),
            16.horizontalSpace,
            (unreadMessages ?? 0) > 0
                ? Container(
                    height: 24.h,
                    width: 24.w,
                    decoration: BoxDecoration(
                      color: AlphaColors().redColor,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        unreadMessages.toString(),
                        style: TextStyle(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
