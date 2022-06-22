

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../onboard/Login_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 3), () {
      Get.off(() => LoginScreen());
    });
  }
}
