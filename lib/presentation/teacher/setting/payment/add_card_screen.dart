import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task/app/theme/colors.dart';
import 'package:task/presentation/common/appbutton.dart';
import 'package:task/utils/appassets.dart';

import '../../../../app/theme/font.dart';
import '../../../common/square_textfield_widget.dart';

class AddCardScreen extends StatelessWidget {
  const AddCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: (){
                      Get.back();
                    },
                    child: Icon(Icons.arrow_back_rounded,size: 24.sp,)),
                Text("Add Card",style: TextStyle(
                  color: AppColor.blackText,
                  fontFamily: AppFont.fontFamily,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),),
                SizedBox(width: 30.w,),
              ],
            ),
            SizedBox(height: 50.w,),
            CardNumnerWidget(),
            Padding(
              padding: const EdgeInsets.only(
                left: 13,
                right: 13,
                top: 15,
              ),
              child: SquareTextFieldWidget(
                hintText: "Full name as appear on the card",
                inputType: TextInputType.text,
                inputAction: TextInputAction.done,
              ),
            ),
            Row(
              children: <Widget>[
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 13,
                      right: 13,
                      top: 15,
                    ),
                    child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          color: Color(0XFFF2F2F4),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: 'MM/YYYY',
                                hintStyle: Theme
                                    .of(context)
                                    .textTheme
                                    .caption
                                    ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: AppFont.fontFamily,
                                  fontSize: 15.sp,
                                )),
                          ),
                        )),
                  ),
                ),
                Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        right: 15,
                        top: 15,
                      ),
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: Color(0XFFF2F2F4),
                          ),
                          child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: <Widget>[
                                  Flexible(
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          hintText: 'CVV',
                                          hintStyle: Theme
                                              .of(context)
                                              .textTheme
                                              .caption
                                              ?.copyWith(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15.sp,
                                            fontFamily: AppFont.fontFamily,
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 10.w),
                                    child: Icon(
                                      Icons.info,
                                      color: AppColor.blackText,
                                      size: 25.0,
                                    ),
                                  )
                                ],
                              ))),
                    )),
              ],
            ),
            SizedBox(
              height: 36,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child:  AppButton(
                      text: "DONE",
                      onClick: () {

                      },
                      minBtnHeight: 56.h,
                      borderRadius: 16.r,
                      fontSize: 16.sp,
                      fontFamily: AppFont.fontFamily,
                      maxBtnHeight: 56.h,
                      minimumBtnWidth: 335.w,
                      fontWeight: FontWeight.w500,
                      color: AppColor.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 21,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.lock,
                    color: AppColor.blackText,
                    size: 24.0,
                  ),
                  Text(
                    "Your payment info is stored securely.",
                    style: Theme
                        .of(context)
                        .textTheme
                        .caption
                        ?.copyWith(
                      fontSize: 15.sp,
                      fontFamily: AppFont.fontFamily,
                      color: AppColor.blackText,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );

  }
}
class CardNumnerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
          top: 15,
        ),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            color: Color(0XFFF2F2F4),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: Image.asset(AppAssets.card,height: 40.h,width: 40.w,),
              ),
              Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 14,
                      right: 10,
                    ),
                    child: TextField(
                      style: TextStyle(

                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: 'Card Number',
                        hintStyle: Theme.of(context).textTheme.caption?.copyWith(
                          fontFamily: AppFont.fontFamily,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(
                  right: 15,
                ),
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.black,
                  size: 24.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}