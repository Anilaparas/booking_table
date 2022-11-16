// ignore_for_file: must_be_immutable

import 'package:booking_table/utils/common/common_strings.dart';

import 'package:booking_table/view/service_type/widgets/full_service_summary_bottom_view.dart';
import 'package:booking_table/view/service_type/widgets/full_service_summary_details_button_view.dart';
import 'package:booking_table/view/service_type/widgets/full_service_summary_top_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FullServiceSummaryBody extends StatelessWidget {
  String? callFrom;
  FullServiceSummaryBody({
    this.callFrom,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const FullSummaryTopView(),
          // CommonSizedBox(height: 21),
          FullSummaryBookingDetailsView(
            callFrom: callFrom,
          ),
          Container(
            width: Get.width,
            height: 1,
            color: whiteE5E5E5,
          ).paddingOnly(
            top: 5,
            bottom: 5,
          ),
          FullSummaryBottomView(),
        ],
      ),
    );
  }
}
