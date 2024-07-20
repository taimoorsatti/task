import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task/app/theme/colors.dart';
import 'package:task/app/theme/font.dart';
import 'package:task/presentation/common/appbutton.dart';
import 'package:task/presentation/common/apptextfield.dart';
import 'package:task/models/teacher/ChatModel.dart';
import 'package:task/utils/appassets.dart';

class GroupChatComponents extends StatefulWidget {
  const GroupChatComponents({super.key});

  @override
  State<GroupChatComponents> createState() => _GroupChatComponentsState();
}

class _GroupChatComponentsState extends State<GroupChatComponents> {
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
    ChatMessage(messageContent: " ", messageType: ""),
    ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Hey Kriss, I am doing fine dude. wbu?",
        messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
  ];
  bool isShowContainor = false;
  bool isintersted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(right: 16),
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
                  backgroundImage: AssetImage(AppAssets.video1),
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
                        "Group Math",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: AppFont.fontFamily,
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Ali, Hassan, Zagham,...",
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: AppFont.fontFamily,
                            color: AppColor.blackText.withOpacity(0.5),
                            fontWeight: FontWeight.w400),
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
            padding: EdgeInsets.only(left: 8.0, right: 10.sp),
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
              itemCount: 1,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 10, bottom: 80),
              // physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 50.h,
                    ),
                    Container(
                      height: 30.h,
                      width: 130.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.r),
                          color: AppColor.primaryColor),
                      child: Center(
                        child: Text("December 12, 2022",
                            style: TextStyle(
                              color: AppColor.whiteColor,
                              fontSize: 12.sp,
                              fontFamily: AppFont.fontFamily,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 15.h,
                            ),
                            Center(
                              child: Container(
                                height: 245.h,
                                width: 300.w,
                                decoration: BoxDecoration(
                                  color: AppColor.whiteColor,
                                  borderRadius: BorderRadius.circular(15.r),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("~ John",
                                              style: TextStyle(
                                                color: const Color.fromRGBO(
                                                    96, 156, 132, 1),
                                                fontSize: 10.sp,
                                                fontFamily: AppFont.fontFamily,
                                                fontWeight: FontWeight.w400,
                                              )),
                                          Text("9:25 AM",
                                              style: TextStyle(
                                                color: const Color.fromRGBO(
                                                    121, 124, 123, 1),
                                                fontSize: 10.sp,
                                                fontFamily: AppFont.fontFamily,
                                                fontWeight: FontWeight.w400,
                                              )),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text("Title: Maths Assignment",
                                          style: TextStyle(
                                            color: AppColor.blackText,
                                            fontSize: 12.sp,
                                            fontFamily: AppFont.fontFamily,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Container(
                                        height: 1.h,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: AppColor.blackText
                                              .withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(15.r),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 7.h,
                                      ),
                                      Text(
                                          "Description: I need Prolog software tutoring. For one hour today 7:30pm according to German Time. I pay 5 per hour. If i satisfy with your tuition than i carry in future.anks",
                                          style: TextStyle(
                                            color: AppColor.blackText,
                                            fontSize: 12.sp,
                                            fontFamily: AppFont.fontFamily,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Container(
                                        width: 140.w,
                                        height: 50.h,
                                        decoration: BoxDecoration(
                                          color: const Color(0xff234F68)
                                              .withOpacity(0.7),
                                          borderRadius:
                                              BorderRadius.circular(10.r),
                                        ),
                                        child: Center(
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 10.0.w),
                                            child: Text(
                                                "Math Assignment.zip 23 MB",
                                                style: TextStyle(
                                                  color: AppColor.whiteColor,
                                                  fontSize: 12.sp,
                                                  fontFamily:
                                                      AppFont.fontFamily,
                                                  fontWeight: FontWeight.w500,
                                                )),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(),
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                          isintersted
                                              ? SizedBox()
                                              : GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      isShowContainor = true;
                                                    });
                                                  },
                                                  child: Container(
                                                    height: 28.h,
                                                    width: 80.w,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15.r),
                                                        color: AppColor
                                                            .primaryColor),
                                                    child: Center(
                                                      child: Text("Tap to Bid",
                                                          style: TextStyle(
                                                            color: AppColor
                                                                .whiteColor,
                                                            fontSize: 12.sp,
                                                            fontFamily: AppFont
                                                                .fontFamily,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          )),
                                                    ),
                                                  ),
                                                ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    isintersted
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 28.h,
                                width: 118.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.r),
                                    color: AppColor.primaryColor),
                                child: Center(
                                  child: Text("intersted",
                                      style: TextStyle(
                                        color: AppColor.whiteColor,
                                        fontSize: 12.sp,
                                        fontFamily: AppFont.fontFamily,
                                        fontWeight: FontWeight.w500,
                                      )),
                                ),
                              ),
                            ],
                          )
                        : SizedBox(),
                  ],
                );
              },
            ),
          ),
          isShowContainor
              ? Align(
                  alignment: Alignment.center,
                  child: showStudentCountryDialog(),
                )
              : SizedBox(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
                "You cant Send the Message Here\nOnly you See the Posted Tasks from the Students",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColor.blackText,
                  fontSize: 12.sp,
                  fontFamily: AppFont.fontFamily,
                  fontWeight: FontWeight.w400,
                )),
          ),
        ],
      ),
    );
  }

  Widget showStudentCountryDialog() {
    return Padding(
      padding: EdgeInsets.only(bottom: 60.h),
      child: Container(
          height: 240.h,
          width: 300.w,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 255, 255, 1),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.8),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(0, 2), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 0.h,
              ),
              Image.asset(
                AppAssets.newLogo,
                height: 73.h,
                width: 182.w,
              ),
              SizedBox(
                height: 0.h,
              ),
              Text(
                "Price",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color.fromRGBO(142, 142, 147, 1),
                  fontSize: 13.sp,
                  fontFamily: AppFont.fontFamily,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              NumberInputWithIncrementDecrement(),
              SizedBox(
                height: 20.h,
              ),
              AppButton(
                text: "Submit",
                onClick: () {
                  setState(() {
                    isShowContainor = false;
                    isintersted = true;
                  });
                },
                minBtnHeight: 56.h,
                borderRadius: 16.r,
                fontSize: 16.sp,
                fontFamily: AppFont.fontFamily,
                maxBtnHeight: 56.h,
                minimumBtnWidth: 209.w,
                fontWeight: FontWeight.w500,
                color: AppColor.primaryColor,
              ),
            ],
          )),
    );
  }
}

class NumberInputWithIncrementDecrement extends StatefulWidget {
  @override
  _NumberInputWithIncrementDecrementState createState() =>
      _NumberInputWithIncrementDecrementState();
}

class _NumberInputWithIncrementDecrementState
    extends State<NumberInputWithIncrementDecrement> {
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.text = "5"; // Setting the initial value for the field.
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 70.0,
              height: 35.h,
              foregroundDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(border: InputBorder.none),
                      controller: _controller,
                      keyboardType: TextInputType.numberWithOptions(
                        decimal: false,
                        signed: true,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 10.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        InkWell(
                          child: Image.asset(
                            AppAssets.downIcon,
                            height: 6.h,
                            width: 10.w,
                          ),
                          onTap: () {
                            int currentValue = int.parse(_controller.text);
                            setState(() {
                              print("Setting state");
                              currentValue--;
                              _controller.text =
                                  (currentValue > 0 ? currentValue : 0)
                                      .toString(); // decrementing value
                            });
                          },
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.0.w),
          child: Container(
            height: 1,
            width: 60.0,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
