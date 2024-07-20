import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../app/theme/colors.dart';
import '../../app/theme/font.dart';

class AppBarItem extends StatelessWidget {
  final String title;
  final Widget? sufixWidget;
  final Widget? prefixWidget;
  final Color? backgroudColor;
  final TextStyle? style;
  final Color? backBtnColor;
  final EdgeInsets? edgeInsets;
  final bool? showLeading;
  final bool? showBorderBottom;
  final Function()? onTapPrefix;
  final PreferredSizeWidget? bottomWidget;
  final Color? titleColor;
  const AppBarItem({
    super.key,
    required this.title,
    this.sufixWidget,
    this.style,
    this.backBtnColor,
    this.prefixWidget,
    this.onTapPrefix,
    this.bottomWidget,
    this.showLeading = true,
    this.edgeInsets,
    this.backgroudColor,
    this.showBorderBottom = true,
    this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom: bottomWidget,
      leading: showLeading == true
          ? Padding(
              padding: EdgeInsets.only(
                left: 10.w,
              ),
              child: GestureDetector(
                onTap: onTapPrefix ?? () => Get.back(),
                child: Icon(
                  Icons.arrow_back,
                  color: AppColor.blackText ?? AppColor.loginBlack,
                  size: 20.w,
                ),
              ),
            )
          : prefixWidget ?? const SizedBox(),
      elevation: 0,
      backgroundColor: backgroudColor ?? AppColor.loginBlack,
      shape: Border(
        bottom: BorderSide(
          color: showBorderBottom == true
              ? AppColor.greyLight
              : Colors.transparent,
          width: 1,
        ),
      ),
      centerTitle: false,
      title: Text(
        title.toString(),
        style: style ??
            TextStyle(
              color: titleColor ?? AppColor.blackText,
              fontFamily: AppFont.fontFamily,
              fontWeight: FontWeight.w500,
              fontSize: 20.sp,
            ),
      ),
      actions: [
        sufixWidget != null
            ? Center(
                child: Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: sufixWidget!,
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
