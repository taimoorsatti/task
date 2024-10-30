// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/colors.dart';
import '../../../../widgets/label_widget.dart';

class ChatDetailsCard extends StatelessWidget {
  String? imagePath;
  String? writerName;
  String? time;
  String? message;
  bool isMyMessage;
  ChatDetailsCard({
    super.key,
    this.writerName,
    this.message,
    this.time,
    this.isMyMessage = false,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isMyMessage ? TextDirection.rtl : TextDirection.ltr,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment:
            isMyMessage ? MainAxisAlignment.start : MainAxisAlignment.end,
        children: [
          Image.asset(
            imagePath ?? 'assets/images/avatar.png',
            height: 40.h,
            width: 40.h,
          ),
          10.horizontalSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Directionality(
                  textDirection: TextDirection.ltr,
                  child: Row(
                    mainAxisAlignment: isMyMessage
                        ? MainAxisAlignment.end
                        : MainAxisAlignment.start,
                    children: [
                      LabelWidget(
                        text: writerName ?? 'Jane Wilson',
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        textColor: AlphaColors().secTextNew,
                        padding: 0,
                      ),
                      10.horizontalSpace,
                      LabelWidget(
                        text: time ?? '10:43',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        textColor: AlphaColors().thirdTextNew,
                        padding: 0,
                      ),
                    ],
                  ),
                ),
                3.verticalSpace,
                Container(
                  constraints: BoxConstraints(
                    maxWidth: 223.w,
                  ),
                  padding: EdgeInsets.all(16.sp),
                  decoration: BoxDecoration(
                    color: AlphaColors().unSelectedChatPinnedColor,
                    borderRadius: isMyMessage
                        ? BorderRadius.only(
                            topLeft: Radius.circular(16.r),
                            bottomLeft: Radius.circular(16.r),
                            bottomRight: Radius.circular(16.r),
                          )
                        : BorderRadius.only(
                            topRight: Radius.circular(16.r),
                            bottomLeft: Radius.circular(16.r),
                            bottomRight: Radius.circular(16.r),
                          ),
                  ),
                  child: Directionality(
                    textDirection: TextDirection.ltr,
                    child: LabelWidget(
                      text:
                          'Hi Jacob and Brandon, any progress on the project?',
                      fontSize: 15.sp,
                      fontWeight: FontWeight.normal,
                      textColor: AlphaColors().basicTextNew,
                      padding: 0,
                      maxlines: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
