// ignore_for_file: must_be_immutable

import 'package:booking_table/controller/payment/card_scan_controller.dart';
import 'package:booking_table/view/payment/widgets/card_scan_pop_up_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardScanPopUpView extends StatelessWidget {
  CardScanPopUpView({Key? key}) : super(key: key);

  CardScanController controller = Get.put(CardScanController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CardScanPopUpBody(controller: controller),
    );
  }
}
