import 'package:booking_table/utils/common/common_strings.dart';
import 'package:booking_table/utils/common/widgets_methods/common_sized_box.dart';
import 'package:booking_table/utils/common/widgets_methods/common_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpcomingReservationsPaymentDetails extends StatelessWidget {
  const UpcomingReservationsPaymentDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: whiteF8F8F8,
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                cardIcon,
                height: 22,
                width: 31,
              ),
              // CARD DETAILS
              Column(
                children: [
                  CommonText(text: '****-*****-3455'),
                  CommonText(text: 'Chaire Fiona'),
                ],
              ),
              Container(),
              // PAYMENT STATUS
              Container(
                height: 19,
                width: 61,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: blueCDE4D7,
                  borderRadius: BorderRadius.circular(23),
                ),
                child: CommonText(
                  text: 'Paid',
                  fontSize: 12,
                  color: blue339653,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          CommonSizedBox(
            height: 10,
          ),
          Container(
            height: 1,
            width: Get.width,
            color: whiteE5E5E5,
          ),
          CommonSizedBox(
            height: 10,
          ),
          // BOOKING AMOUNT
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CommonText(
                text: 'Booking Amount: ',
                color: textLight868686,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
              CommonText(
                text: '\$100.00',
                color: blue339653,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
