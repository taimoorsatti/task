import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/state_manager.dart';
import 'package:get/get.dart';
import 'package:task/app/theme/colors.dart';
import 'package:task/app/theme/font.dart';
import 'package:task/routing/routes.dart';

import 'ChatComponet.dart';

class StudentConversationList extends StatefulWidget {
  String? name;
  String? messageText;
  String? imageUrl;
  String? time;
  bool? isMessageRead;
  StudentConversationList(
      {this.name,
      this.messageText,
      this.imageUrl,
      this.time,
      this.isMessageRead});
  @override
  _StudentConversationListState createState() =>
      _StudentConversationListState();
}

class _StudentConversationListState extends State<StudentConversationList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.singlechatroom);
      },
      child: Container(
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
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            height: 1.h,
                            width: double.infinity,
                            color: AppColor.greyColor.withOpacity(0.3),
                          )
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
    );
  }
}
