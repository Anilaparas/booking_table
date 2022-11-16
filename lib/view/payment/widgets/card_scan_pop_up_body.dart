import 'package:booking_table/controller/payment/card_scan_controller.dart';
import 'package:booking_table/utils/common/common_strings.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardScanPopUpBody extends StatelessWidget {
  const CardScanPopUpBody({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final CardScanController controller;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 280,
        width: Get.width,
        margin: const EdgeInsets.symmetric(
          horizontal: 36,
        ),
        child: InkWell(
          onTap: () {
            controller.scanCardDetails();
            // Get.to(()=>const ScanCardScreen());
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                  child: Image.asset(
                scanCard,
                height: 168,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
