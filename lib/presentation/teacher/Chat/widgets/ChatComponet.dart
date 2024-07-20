import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task/app/theme/colors.dart';
import 'package:task/app/theme/font.dart';
import 'package:task/presentation/common/apptextfield.dart';
import 'package:task/models/teacher/ChatModel.dart';
import 'package:task/utils/appassets.dart';

class ChatComponent extends StatefulWidget {
  @override
  _ChatComponentState createState() => _ChatComponentState();
}

class _ChatComponentState extends State<ChatComponent> {
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
                        "online",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: AppFont.fontFamily,
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),


                    const Icon(Icons.more_vert),

              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Padding(
            padding:  EdgeInsets.only(left: 8.0,right: 10.sp),
            child: Container(
              height: Get.height,
              width: Get.width,
              decoration: BoxDecoration(
                color: AppColor.greyLight.withOpacity(0.1),
                borderRadius: BorderRadius.circular(15.r),
              ),
            ),
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
                            : AppColor.primaryColor),
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
            padding: const EdgeInsets.all(15.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: AppColor.whiteColor,
                ),
                padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                height: 70.h,
                width: double.infinity,

                child: Row(
                  children: <Widget>[
                    Image.asset(AppAssets.camera,height: 20.h,width: 20.w,),
                    SizedBox(
                      width: 15.w,
                    ),
                    Expanded(
                      child: TextField(
                        controller: MesssageText,
                        decoration: InputDecoration(
                            hintText: "Say something",
                            hintStyle: TextStyle(
                                fontSize: 18.sp,
                                fontFamily: AppFont.fontFamily,
                                color: AppColor.greyLight.withOpacity(0.6),
                                fontWeight: FontWeight.w400),
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),

                    InkWell(
                      onTap: (){
                        ChatMessage message = ChatMessage(
                            messageContent: "${MesssageText.text}",
                            messageType: status ? "sender" : "receiver");
                        setState(() {
                          messages.add(message);
                          MesssageText.text = "";
                          status = !status;
                        });
                        _listController?.animateTo(
                          _listController!.positions.last.maxScrollExtent + 50,
                          curve: Curves.decelerate,
                          duration: const Duration(milliseconds: 300),
                        );
                      },
                      child: Container(
                        height: 60.h,
                        width: 60.w,
                        decoration: const BoxDecoration(
                            color: AppColor.whiteColor,
                            shape: BoxShape.circle
                        ),
                        child: Center(child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.send,size: 28.sp,color: AppColor.primaryColor,),
                          ],
                        )),
                      ),
                    ),
                    SizedBox(width: 5.w,),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
