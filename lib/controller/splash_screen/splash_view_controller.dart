// ignore_for_file: file_names

import 'package:booking_table/controller/user_session/user_session_controller.dart';
import 'package:get/get.dart';

class SplashViewController extends GetxController {
  UserSessionController controller = Get.find();

  @override
  void onInit() {
    // TODO: implement onInit
    controller.init();
    print('Splash Screen Init');
    print(controller.isLogin);
    super.onInit();
  }

  @override
  void onReady() {
    splashInit();
    super.onReady();
  }

  Future<void> splashInit() async {
    await Future.delayed(const Duration(seconds: 2));
    if (controller.isLogin) {
      Get.offAllNamed('/home');
    } else {
      Get.offAllNamed('/authentication');
    }
  }

  @override
  void onClose() {
    // TODO: implement onClose
    print('Splash Screen Close');
    super.onClose();
  }
}
