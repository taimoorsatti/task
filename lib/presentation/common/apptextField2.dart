import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/app/theme/font.dart';


import '../../app/theme/colors.dart';

class AppTextField2 extends StatelessWidget {
  const AppTextField2({
    super.key,
    this.prefixIcon,
    this.suffixIcon,
    required this.hint,
    this.maxLine,
    required this.textInputType,
    required this.textInputAction,
    this.isObscure = false,
    this.controller,
    this.onChanged,
    this.borderColor,
    this.readOnly,
    this.isFilled,
    this.filledColor,
    this.marginBottom,
    this.minimumHeight,
    this.maximumHeight,
    this.autoFocus,

    this.height,
    this.isEnabled = true,
    this.hinttextColor,

  });

  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String hint;
  final double? height;
  final int? maxLine;
  final TextInputType textInputType;
  final bool? isEnabled;
  final Color? hinttextColor;
  final TextInputAction? textInputAction;
  final bool? isObscure;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final bool? readOnly;
  final bool? isFilled;
  final Color? borderColor;
  final Color? filledColor;
  final double? marginBottom;
  final double? minimumHeight;
  final double? maximumHeight;
  final bool? autoFocus;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:height?? 60.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColor.whiteColor,
      ),
      child: Center(
        child: TextFormField(
          obscureText: isObscure ?? false,
          controller: controller,
          readOnly: readOnly ?? false,
          onChanged: onChanged,
          maxLines: maxLine ?? 1,
          keyboardType: textInputType,
          enabled: isEnabled ?? true,
          textInputAction: textInputAction,
          style: TextStyle(
              color: AppColor.blackText,
              fontFamily: AppFont.fontFamily,
              fontSize: 15.sp,
              fontWeight: FontWeight.w600),
          autofocus: autoFocus ?? false,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 0,
              ),
            ),
            constraints: BoxConstraints(
              minHeight: minimumHeight ?? 55.h,
              maxHeight: maximumHeight ?? 55.h,
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 0,
              ),
            ),
            suffixIcon: suffixIcon,
            suffixIconConstraints: suffixIcon == null
                ? BoxConstraints(minWidth: 8.w, minHeight: 28.h)
                : BoxConstraints(minWidth: 8.w, minHeight: 28.h),
            prefixIconConstraints: prefixIcon == null
                ? BoxConstraints(minWidth: 0.h, minHeight: 0)
                : BoxConstraints(minWidth: 0.h, minHeight: 0),
            isDense: true,
            prefixIcon: prefixIcon ?? const SizedBox(),
            fillColor: filledColor ?? Colors.transparent,
            filled: isFilled ?? false,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 0,
              ),
            ),
            hintText: hint,
            hintStyle: TextStyle(
                color:hinttextColor?? AppColor.blackText.withOpacity(0.7),
                fontFamily: AppFont.fontFamily,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
