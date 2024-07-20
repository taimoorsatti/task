import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task/app/theme/colors.dart';
import 'package:task/app/theme/font.dart';
import 'package:task/presentation/common/apptextfield.dart';
import 'package:task/models/teacher/ChatModel.dart';
import 'package:task/utils/appassets.dart';

class StudentChatComponent extends StatefulWidget {
  @override
  _StudentChatComponentState createState() => _StudentChatComponentState();
}

class _StudentChatComponentState extends State<StudentChatComponent> {
  TextEditingController _MesssageText = TextEditingController();
  TextEditingController get MesssageText => _MesssageText;
  ScrollController? _listController;

  @override
  void initState() {
    _listController = ScrollController();
    _listController!.addListener(_scrollListener);
  }

  _scrollListener() {}

  set data(value) {
    _MesssageText = value;
  }

  int count = 0;
  bool status = true;
  List listmessage = [];
  List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Hey Kriss, I am doing fine dude. wbu?",
        messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 2,
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage(AppAssets.male),
                  maxRadius: 20,
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Antony Das",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: AppFont.fontFamily,
                            color: AppColor.blackText,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        "Live",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: AppFont.fontFamily,
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                      AppAssets.search,
                      height: 21.h,
                      width: 21.w,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    const Icon(Icons.more_vert),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Image.asset(
            AppAssets.background,
            height: Get.height,
            width: Get.width,
            fit: BoxFit.fill,
          ),
          Container(
            // height: 500,
            child: ListView.builder(
              controller: _listController,
              itemCount: messages.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 10, bottom: 80),
              // physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  padding:
                      EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
                  child: Align(
                    alignment: (messages[index].messageType == "receiver"
                        ? Alignment.topLeft
                        : Alignment.topRight),
                    child: Container(
                      constraints:
                          const BoxConstraints(minWidth: 120, maxWidth: 230),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12.r),
                            topRight: Radius.circular(3.r),
                            bottomRight: Radius.circular(5.r),
                            bottomLeft: Radius.circular(3)),
                        color: (messages[index].messageType == "receiver"
                            ? Colors.grey.shade200
                            : const Color.fromRGBO(205, 255, 209, 1)),
                      ),
                      padding: EdgeInsets.all(12),
                      child: Text(
                        messages[index].messageContent!,
                        style: TextStyle(
                          color: AppColor.blackText,
                          fontSize: 12.sp,
                          fontFamily: AppFont.fontFamily,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 25.h),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0.w),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        width: 30,
                        child: Image.asset(
                          AppAssets.smile,
                          height: 18.h,
                          width: 15.w,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Flexible(
                    child: AppTextField(
                      hint: 'Write your message',
                      textInputType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Image.asset(
                          AppAssets.path,
                          height: 18.h,
                          width: 15.w,
                        ),
                      ),

                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Padding(
                      padding: EdgeInsets.only(right: 10.0.w),
                      child: Image.asset(
                        AppAssets.camera,
                        height: 18.h,
                        width: 20.w,
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
