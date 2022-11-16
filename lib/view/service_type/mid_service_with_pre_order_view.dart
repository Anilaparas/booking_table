// ignore_for_file: must_be_immutable

import 'package:booking_table/controller/service_type/summary_controller.dart';
import 'package:booking_table/utils/common/widgets_methods/common_app_bar.dart';
import 'package:booking_table/view/service_type/widgets/mid_service_pre_order_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MidServiceWithPreOrderView extends StatelessWidget {
  MidServiceWithPreOrderView({
    Key? key,
  }) : super(key: key);

  SummaryController controller = Get.put(SummaryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarCommon(text: "Summary"),
      body: const MidServicePreOrderSummaryBody(),
    );
  }
}
