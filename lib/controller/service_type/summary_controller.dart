import 'package:get/get.dart';

class SummaryController extends GetxController {
  var isOpen = false.obs;
  var selectTipPrice = 0.obs;
  var selectPaymentMethod = 0.obs;
  final listOfPaymentMethods = [];
  var addTip = "".obs;

  final listOfTipPrice = [
    '10%',
    '15%',
    '20%',
    'Custom',
    'None',
  ];

  toggleTile(val) {
    isOpen.value != val;
  }
}
