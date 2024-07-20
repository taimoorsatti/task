import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../app/theme/colors.dart';
import '../../app/theme/font.dart';


class AppButton extends StatelessWidget {
  final String? text;
  final String? isIcon;
  final Function()? onClick;
  final double? borderRadius;
  final Color? color;
  final Color? textColor;
  final TextStyle? fontStyle;
  final Color? borderColor;
  final double? fontSize;

  final FontWeight? fontWeight;
  final double? minimumBtnWidth;
  final double? maximumBtnWith;
  final double? maxBtnHeight;
  final double? minBtnHeight;
  final String? fontFamily;
  final Function()? onclickCal;
  final Widget? textWidget;
  const AppButton({super.key,
    this.onclickCal,
     this.text,
    required this.onClick,
    this.isIcon,
    this.borderRadius,
    this.color = AppColor.primaryColor,
    this.borderColor,
    this.fontStyle,
    this.textColor,
    this.minBtnHeight,
    this.maxBtnHeight,
    this.fontWeight,
    this.fontFamily,
    this.minimumBtnWidth,
    this.maximumBtnWith,
    this.fontSize, this.textWidget,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return RawMaterialButton(
      highlightElevation: 5,
      constraints: BoxConstraints(
        minHeight: minBtnHeight ?? 52.h,
        maxHeight: maxBtnHeight ?? 52.h,
        maxWidth: maximumBtnWith ?? size.width,
        minWidth: minimumBtnWidth ?? size.width,
      ),
      onPressed: () => onClick?.call(),
      fillColor: color ?? AppColor.primaryColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 10.r),
        side: BorderSide(
          width: 1,
          color: borderColor ?? color!,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         textWidget?? Text(
            text.toString(),
            style: fontStyle ??
                TextStyle(
                  color: textColor ?? Colors.white,
                  fontSize: fontSize ?? 16.sp,
                  fontWeight: fontWeight ?? FontWeight.w600,
                  fontFamily: fontFamily ?? AppFont.fontFamily,
                ),
          ),
          SizedBox(width:isIcon==null?0: 10.w,),
          isIcon==null?const SizedBox():
          InkWell(
            onTap: onclickCal,
            child: Padding(
              padding:  EdgeInsets.all(5.0.sp),
              child: Image.asset(isIcon!,height: 20.h,width: 20.w,color:Colors.white,),
            ),
          ),
        ],
      ),
    );
  }
}

