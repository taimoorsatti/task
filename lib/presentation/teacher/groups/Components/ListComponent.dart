import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/state_manager.dart';
import 'package:get/get.dart';
import 'package:task/app/theme/colors.dart';
import 'package:task/app/theme/font.dart';
import 'package:task/routing/routes.dart';

import 'ChatComponet.dart';

class GroupConversationList extends StatefulWidget {
  String? name;
  String? messageText;
  String? imageUrl;
  String? time;
  bool? isMessageRead;
  GroupConversationList(
      {this.name,
      this.messageText,
      this.imageUrl,
      this.time,
      this.isMessageRead});
  @override
  _GroupConversationListState createState() => _GroupConversationListState();
}

class _GroupConversationListState extends State<GroupConversationList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.groupchatroom);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 80.h,
          decoration: BoxDecoration(
            color: AppColor.greyLight.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15),
          ),
          padding:
              EdgeInsets.only(left: 16.w, right: 16.w, top: 8.h, bottom: 8.h),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    CircleAvatar(backgroundImage: AssetImage(widget.imageUrl!)),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.transparent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  widget.name!,
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontFamily: AppFont.fontFamily,
                                      color: AppColor.blackText,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(widget.time!,
                                    style: TextStyle(
                                        color: const Color.fromRGBO(
                                            142, 142, 147, 1),
                                        fontSize: 14.sp,
                                        fontFamily: AppFont.fontFamily,
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(widget.messageText!,
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontFamily: AppFont.fontFamily,
                                        color: AppColor.blackText,
                                        fontWeight: FontWeight.w400)),
                                widget.isMessageRead == true
                                    ? Container(
                                        height: 16.h,
                                        width: 29.w,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20.r),
                                          color: AppColor.primaryColor,
                                        ),
                                        child: Center(
                                          child: Text("10",
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  fontFamily: AppFont.fontFamily,
                                                  color: AppColor.whiteColor,
                                                  fontWeight: FontWeight.w400)),
                                        ),
                                      )
                                    : SizedBox(),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
