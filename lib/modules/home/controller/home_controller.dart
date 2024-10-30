import 'package:design_test/modules/calendar/view/calendar_view.dart';
import 'package:design_test/modules/chat/view/chat_view.dart';
import 'package:design_test/modules/overview/view/overview_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/side_bar_menu/slider.dart';

class HomeController extends GetxService {
  GlobalKey<SliderDrawerState> sliderDrawerKey = GlobalKey<SliderDrawerState>();
  RxInt selectedNavItem = 0.obs;
  List navItems = [
    const OverviewView(),
    const CalendarView(),
    const ChatView(),
  ];
}
