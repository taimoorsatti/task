import 'package:design_test/modules/calendar/view/calendar_view.dart';
import 'package:design_test/modules/chat/view/chat_view.dart';
import 'package:design_test/modules/home/view/home_view.dart';
import 'package:design_test/modules/overview/view/overview_view.dart';
import 'package:design_test/modules/splash/view/splash_view.dart';
import 'package:get/get.dart';

import '../modules/chat/view/chat_detail_view.dart';

class Routes {
  static final Routes _sharedInstance = Routes._internal();

  factory Routes() {
    return _sharedInstance;
  }
  Routes._internal();

  String getSplashPage() => SplashView.id;
  String getHomePage() => HomeView.id;
  String getOverViewPage() => OverviewView.id;
  String getCalendarPage() => CalendarView.id;
  String getChatPage() => ChatView.id;
  String getChatDetailsPage() => ChatDetailsView.id;

  List<GetPage> routeMap = [
    GetPage(
      name: SplashView.id,
      page: () => SplashView(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: HomeView.id,
      page: () => HomeView(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: ChatView.id,
      page: () => const ChatView(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: OverviewView.id,
      page: () => const OverviewView(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: CalendarView.id,
      page: () => const CalendarView(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: ChatDetailsView.id,
      page: () => const ChatDetailsView(),
      transition: Transition.cupertino,
    ),
  ];
}
