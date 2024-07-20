import 'package:get/get.dart';


import '../controllers/auth/signup/signup_controller.dart';
import '../data/api/api_provider.dart';


Future<void> initApp() async {
  Get.lazyPut(() => ApiProvider());
  Get.lazyPut(() => SignUpController());





}
