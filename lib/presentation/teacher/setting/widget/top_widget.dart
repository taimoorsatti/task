
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/theme/colors.dart';
import '../../../../app/theme/font.dart';
import '../../../../utils/appassets.dart';

class TopWidgetSetting extends StatelessWidget {
  const TopWidgetSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[


        const CircleAvatar(
          backgroundImage: AssetImage(AppAssets.blogs3),
          maxRadius: 25,
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
                    fontWeight: FontWeight.w700),
              ),
              
              Text(
                "never give up",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: AppFont.fontFamily,
                    color: AppColor.greyLight.withOpacity(0.5),
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),


        const Icon(Icons.document_scanner_outlined,size: 30,),

      ],
    );
  }
}
