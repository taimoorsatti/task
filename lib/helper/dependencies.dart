import 'package:design_test/modules/calendar/controller/calendar_controller.dart';
import 'package:design_test/modules/chat/controller/chat_controller.dart';
import 'package:design_test/modules/home/controller/home_controller.dart';
import 'package:design_test/modules/overview/controller/over_view_controller.dart';
import 'package:get/get.dart';

Future<void> alphaInit() async {
  Get.lazyPut(() => HomeController());
  Get.lazyPut(() => OverViewController());
  Get.lazyPut(() => ChatController());
  Get.lazyPut(() => CalendarController());
}
