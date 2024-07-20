import 'package:get/get.dart';
import 'package:task/routing/routes.dart';

class SplashController extends GetxController{

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Future.delayed(const Duration(seconds: 2),(){
      Get.toNamed(AppRoutes.start);

    });
  }


}