import 'package:design_test/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'helper/slider_app_bar.dart';
import 'slider_direction.dart';

class SAppBar extends StatelessWidget {
  final Color splashColor;

  final AnimationController animationController;
  final VoidCallback onTap;
  final SlideDirection slideDirection;

  final SliderAppBar sliderAppBar;
  final bool isCupertino;

  const SAppBar(
      {super.key,
      this.splashColor = const Color(0xff000000),
      required this.animationController,
      required this.onTap,
      required this.slideDirection,
      required this.sliderAppBar,
      this.isCupertino = false});

  @override
  Widget build(BuildContext context) {
    List<Widget> items = appBar();
    return Container(
      height: 80.h,
      padding: sliderAppBar.appBarPadding,
      decoration: BoxDecoration(
        color: AlphaColors().backgroundColor,
        border: Border(
          bottom: BorderSide(
            color: AlphaColors().grayNew,
            width: 1.h,
          ),
        ),
      ),
      child: Row(
        children: items,
      ),
    );
  }

  List<Widget> appBar() {
    List<Widget> list = [
      IconButton(
        splashColor: splashColor,
        icon: Image.asset(
          'assets/images/dashboard_icon.png',
          height: 22.h,
        ),
        // icon: AnimatedIcon(
        //   icon: AnimatedIcons.menu_close,
        //   color: sliderAppBar.drawerIconColor,
        //   size: sliderAppBar.drawerIconSize,
        //   progress: animationController,
        // ),
        onPressed: () => onTap(),
      ),
      Expanded(
        // child: sliderAppBar.title,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'assets/images/search_icon.png',
              height: 22.h,
            ),
            25.horizontalSpace,
            Image.asset(
              'assets/images/setting_icon.png',
              height: 22.h,
            ),
            25.horizontalSpace,
            Image.asset(
              'assets/images/notification_icon.png',
              height: 22.h,
            ),
            16.horizontalSpace,
            Container(
              width: 1.w,
              height: 31.h,
              decoration: BoxDecoration(
                color: AlphaColors().grayNew,
              ),
            ),
            16.horizontalSpace,
            Image.asset(
              'assets/images/avatar.png',
              height: 40.h,
            ),
          ],
        ),
      ),
      16.horizontalSpace,
    ];

    if (slideDirection == SlideDirection.RIGHT_TO_LEFT) {
      return List.from(list.reversed);
    }
    return list;
  }
}

class AnimatedCupertinoIcon extends StatefulWidget {
  final Animation<double> progress;
  final VoidCallback onTap;

  const AnimatedCupertinoIcon(
      {super.key, required this.progress, required this.onTap});

  @override
  State<AnimatedCupertinoIcon> createState() => _AnimatedCupertinoIconState();
}

class _AnimatedCupertinoIconState extends State<AnimatedCupertinoIcon> {
  bool isCompleted = false;

  @override
  void initState() {
    widget.progress.addListener(() {
      isCompleted = widget.progress.isCompleted;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
            isCompleted
                ? CupertinoIcons.clear_thick
                : CupertinoIcons.line_horizontal_3,
            color: Colors.grey,
            size: 25.0),
      ),
    );
  }
}
