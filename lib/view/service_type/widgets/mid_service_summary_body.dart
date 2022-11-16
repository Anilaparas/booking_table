import 'package:booking_table/utils/common/common_strings.dart';

import 'package:booking_table/utils/common/widgets_methods/common_sized_box.dart';
import 'package:booking_table/view/service_type/widgets/mid_service_summary_bottom_view.dart';
import 'package:booking_table/view/service_type/widgets/mid_service_summary_details_button_view.dart';
import 'package:booking_table/view/service_type/widgets/mid_service_summary_top_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MidServiceSummaryBody extends StatelessWidget {
  const MidServiceSummaryBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const MidSummaryTopView(),
          CommonSizedBox(height: 21),
          MidSummaryBookingDetailsView(
            callFrom: 'Place Order',
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 18.0, top: 26.0),
            height: 1,
            width: Get.width * 0.9,
            color: textLight868686,
          ),
          MidSummaryBottomView(),
        ],
      ),
    );
  }
}
