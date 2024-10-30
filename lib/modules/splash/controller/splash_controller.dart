import 'package:design_test/routing/routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _initialize();
  }

  void _initialize() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offAllNamed(Routes().getHomePage());
  }
}
