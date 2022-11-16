import 'package:booking_table/utils/common/widgets_methods/common_sized_box.dart';
import 'package:booking_table/view/service_type/widgets/mid_service_preorder_booking_details_view.dart';
import 'package:booking_table/view/service_type/widgets/mid_service_summary_bottom_view.dart';
import 'package:booking_table/view/service_type/widgets/mid_service_summary_top_view.dart';
import 'package:flutter/material.dart';

class MidServicePreOrderSummaryBody extends StatelessWidget {
  const MidServicePreOrderSummaryBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const MidSummaryTopView(),
          CommonSizedBox(height: 21),
          const MidSummaryPreOrderBookingDetailsView(),
          Container(
            margin: const EdgeInsets.only(
              bottom: 18.0,
            ),
            // height: 1,
            // width: Get.width * 0.9,
            // color: textLight868686,
          ),
          MidSummaryBottomView(),
        ],
      ),
    );
  }
}
