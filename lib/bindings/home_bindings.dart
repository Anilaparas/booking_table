import 'package:booking_table/controller/home/home_controller.dart';
import 'package:get/get.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    // Get.lazyPut<UserSessionController>(() => UserSessionController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
