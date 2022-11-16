import 'package:booking_table/utils/common/common_strings.dart';

import 'package:booking_table/utils/common/widgets_methods/common_button.dart';
import 'package:booking_table/utils/common/widgets_methods/common_sized_box.dart';
import 'package:booking_table/utils/common/widgets_methods/common_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MidSummaryPreOrderBookingDetailsView extends StatelessWidget {
  const MidSummaryPreOrderBookingDetailsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      backgroundColor: Colors.white,
      collapsedBackgroundColor: whiteF2F2F2,
      title: CommonText(
        text: 'Booking Details',
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonText(
                text: 'Service Type',
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              CommonSizedBox(
                height: 20,
              ),
              CommonText(
                text: 'Mid Service',
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: redE2211C,
              ),
              CommonSizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(
                    Icons.error,
                    color: Colors.red,
                  ),
                  CommonSizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: CommonText(
                      text:
                          'Pre-Order your food and drink and still have a server in restaurant',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: textLight868686,
                    ),
                  ),
                ],
              ),
              CommonSizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonText(
                    text: 'Pre-Order',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: black000000,
                  ),
                  SizedBox(
                    height: 40,
                    width: 100,
                    child: CommonButton(
                      text: 'Place Order',
                      bgColor: redF2E6E6,
                      fontSize: 14,
                      textColor: redE2211C,
                    ),
                  ),
                ],
              ),
              CommonSizedBox(
                height: 43,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonText(
                        text: 'Spicy Crunchy Chicken',
                        color: black000000,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CommonText(
                            text: 'Quantity: ',
                            color: textLight868686,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                          CommonText(
                            text: '2',
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.close,
                      color: black000000,
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 15, bottom: 15),
                height: 1,
                width: Get.width,
                color: textLight868686,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonText(
                        text: 'Spicy Crunchy Chicken',
                        color: black000000,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CommonText(
                            text: 'Quantity: ',
                            color: textLight868686,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                          CommonText(
                            text: '2',
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.close,
                      color: black000000,
                    ),
                  ),
                ],
              ),
              CommonSizedBox(
                height: 34,
              ),
            ],
          ),
        ),
      ],
    ).paddingOnly(
      left: 14,
      right: 14,
    );
  }
}
