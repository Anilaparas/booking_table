import 'package:get/get.dart';

class NotificationScreenController extends GetxController {
  var isOpen = false.obs;
  toggleSwitch(val) {
    isOpen.value != val;
  }
}
