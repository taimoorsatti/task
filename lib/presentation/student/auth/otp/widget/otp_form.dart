import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task/app/theme/colors.dart';
import 'package:task/app/theme/font.dart';

import '../../../../../controllers/auth/otp/top_controller.dart';


class VerificationOtpForm extends StatefulWidget {
  const VerificationOtpForm({
    Key? key,
  }) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<VerificationOtpForm> {
  FocusNode? pin1FocusNode;
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;
  FocusNode? pin5FocusNode;
  FocusNode? pin6FocusNode;

  @override
  void initState() {
    super.initState();
    pin1FocusNode = FocusNode();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    pin5FocusNode = FocusNode();
    pin6FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
  }

  void nextField(String value, FocusNode? focusNode, FocusNode? previousNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    } else if (value.length == 0) {
      previousNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          otpFields(Get.find<OtpController>().controller1, pin1FocusNode,
              pin2FocusNode, pin1FocusNode),
          otpFields(Get.find<OtpController>().controller2, pin2FocusNode,
              pin3FocusNode, pin1FocusNode),
          otpFields(Get.find<OtpController>().controller3, pin3FocusNode,
              pin4FocusNode, pin2FocusNode),
          otpFields(Get.find<OtpController>().controller4, pin4FocusNode,
              pin5FocusNode, pin3FocusNode),
        ],
      ),
    );
  }

  Widget otpFields(
      TextEditingController controller,
      FocusNode? currentFocusNode,
      FocusNode? nextFocusNode,
      FocusNode? previousNode) {
    return Container(
      width: 74.w,
      height: 70.h,
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow:[
          BoxShadow(
            color: Colors.grey.withOpacity(0.35), //color of shadow
            spreadRadius: 2, //spread radius
            blurRadius: 5, // blur radius
            offset: Offset(0, 2), // changes position of shadow
          ),
          //you can set more BoxShadow() here
        ],

      ),
      child: TextFormField(
        contextMenuBuilder: (context, editableTextState) {
          final buttonItems = editableTextState.contextMenuButtonItems;
          final old = buttonItems
              .where((e) => e.type == ContextMenuButtonType.paste)
              .firstOrNull;
          if (old == null) {
            return AdaptiveTextSelectionToolbar.editableText(
              editableTextState: editableTextState,
            );
          }
          final current = old.copyWith(onPressed: () async {
            final data = await Clipboard.getData(Clipboard.kTextPlain);
            if (data == null) {
              return;
            }
            //
            // Get content from clipboard
            // String? otpFromClipboard = await FlutterClipboard.paste();
            // // Set OTP in respective fields if available
            // if (otpFromClipboard != null && otpFromClipboard.length == 6) {
            //   Get.find<SignUpController>().controller1.text = otpFromClipboard.substring(0, 1);
            //   Get.find<SignUpController>().controller2.text = otpFromClipboard.substring(1, 2);
            //   Get.find<SignUpController>().controller3.text = otpFromClipboard.substring(2, 3);
            //   Get.find<SignUpController>().controller4.text = otpFromClipboard.substring(3, 4);
            //   Get.find<SignUpController>().controller5.text = otpFromClipboard.substring(4, 5);
            //   Get.find<SignUpController>().controller6.text = otpFromClipboard.substring(5, 6);
            // } else {
            //   Fluttertoast.showToast(msg: "Clipboard does not contain a valid OTP.");
            // }
            //

            print('Clipboard text is ${data.text!}');
            editableTextState.hideToolbar();
          });
          buttonItems.remove(old);
          buttonItems.add(current);
          return AdaptiveTextSelectionToolbar.buttonItems(
            anchors: editableTextState.contextMenuAnchors,
            buttonItems: buttonItems,
          );
        },
        // selectionControls: MaterialTextSelectionControls(),
        controller: controller,
        focusNode: currentFocusNode,
        obscureText: false,

        maxLength: 1,
        // autovalidateMode: AutovalidateMode.onUserInteraction,
        style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w600,
            color: AppColor.blackText,
            fontFamily: AppFont.fontFamily),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          counterText: "",
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(color: AppColor.primaryColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide:
                const BorderSide(color: AppColor.textFieldBackGroundColor),
          ),
        ),
        onChanged: (value) => nextField(value, nextFocusNode, previousNode),
      ),
    );
  }
}
