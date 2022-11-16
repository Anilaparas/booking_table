import 'package:get/get.dart';

class PreOrderController extends GetxController {
  final count = 0.obs;

  increment() {
    if (count.value >= 0) {
      count.value++;
    }
  }

  decrement() {
    if (count.value > 0) {
      count.value--;
    }
  }
}
