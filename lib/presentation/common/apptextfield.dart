import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app/theme/colors.dart';
import '../../app/theme/font.dart';


class AppTextField extends StatelessWidget {
  const AppTextField({
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
    this.readOnly,
    this.isFilled,
    this.filledColor,
    this.marginBottom,
    this.minimumHeight,
    this.maximumHeight,
    this.onTap,
    this.autoValidateMode,
    this.autoFocus,
    this.isEnabled = true,
    this.validator,
    this.title,
    this.isDense,
    this.anbale,
    this.labelText,
    this.titleStyle,
    this.titleHeight,
  });

  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? title;
  final String hint;
  final int? maxLine;
  final TextInputType textInputType;
  final bool? isEnabled;
  final double? titleHeight;
  final TextInputAction? textInputAction;
  final bool? isObscure;
  final bool? isDense;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final Function()? onTap;
  final bool? readOnly;
  final bool? isFilled;
  final Color? filledColor;
  final double? marginBottom;
  final double? minimumHeight;
  final bool? anbale;
  final double? maximumHeight;
  final bool? autoFocus;
  final String? Function(String?)? validator;
  final String? labelText;
  final TextStyle? titleStyle;
  final AutovalidateMode? autoValidateMode;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title??"",style: titleStyle??  TextStyle(
          fontSize: 15.sp,
          fontWeight:FontWeight.w500,
          fontFamily: AppFont.fontFamily,
          color: AppColor.primaryColor,
        ),),
        SizedBox(height: 2.h,),
        TextFormField(
          onTap: onTap,
          obscureText: isObscure ?? false,
          controller: controller,
          readOnly: readOnly ?? false,
          validator: validator,
          onChanged: onChanged,
          maxLines: maxLine ?? 1,
          keyboardType: textInputType,
          enabled: isEnabled ?? true,
          textInputAction: textInputAction,
          style: TextStyle(
              color: AppColor.blackText,
              fontFamily: AppFont.fontFamily,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500
          ),
          autofocus: autoFocus ?? false,
          autovalidateMode: autoValidateMode,

          decoration: InputDecoration(
            isDense:isDense ,
            // contentPadding: EdgeInsets.all(
            //   0,
            // ),
            alignLabelWithHint: true,
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color:Colors.grey.withOpacity(0.5),width: 1.2)
            ),
            errorBorder:  const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red,width: 1)
            ),
            border:  const UnderlineInputBorder(
                borderSide: BorderSide(   color: AppColor.whiteColor,width: 1)
            ),
            constraints: BoxConstraints(
              minHeight: minimumHeight ?? 40.h,
              maxHeight: maximumHeight ?? 40.h,
            ),
            disabledBorder:const UnderlineInputBorder(
                borderSide: BorderSide(color:Colors.white,width: 1)
            ),
            suffixIcon: suffixIcon,
            prefixIconConstraints: prefixIcon == null
                ? const BoxConstraints(minWidth: 5, minHeight: 0)
                : const BoxConstraints(minWidth: 5, minHeight: 16),
            prefixIcon:
               prefixIcon ?? const SizedBox(),

            fillColor: filledColor ?? Colors.transparent,
            filled: isFilled ?? false,
            focusedBorder:   const UnderlineInputBorder(
                borderSide: BorderSide(  color: AppColor.primaryColor,width: 1)
            ),
            enabled: anbale??true,

            hintText: hint,
            hintStyle:  TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
              fontFamily: AppFont.fontFamily,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ),
      ],
    );
  }
}

