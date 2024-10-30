import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/colors.dart';
import '../../../widgets/label_widget.dart';

class OverviewView extends StatelessWidget {
  static const String id = "/OverviewView";
  const OverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.w, vertical: 20.h),
      child: LabelWidget(
        text: 'Overview',
        fontSize: 28.sp,
        fontWeight: FontWeight.bold,
        textColor: AlphaColors().secTextNew,
        padding: 0,
      ),
    );
  }
}
