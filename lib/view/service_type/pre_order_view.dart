// ignore_for_file: must_be_immutable

import 'package:booking_table/controller/service_type/pre_order_controller.dart';
import 'package:booking_table/utils/common/widgets_methods/common_app_bar.dart';
import 'package:booking_table/view/service_type/widgets/pre_order_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PreOrderView extends StatelessWidget {
  PreOrderView({Key? key}) : super(key: key);

  PreOrderController controller = Get.put(PreOrderController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarCommon(text: 'Pre Order'),
      body: PreOrderBody(controller: controller),
    );
  }
}
