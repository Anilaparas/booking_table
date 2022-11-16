import 'package:booking_table/utils/common/common_strings.dart';
import 'package:booking_table/utils/common/widgets_methods/common_sized_box.dart';
import 'package:booking_table/utils/common/widgets_methods/common_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingDetailsPreOrderDetails extends StatelessWidget {
  const BookingDetailsPreOrderDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: whiteF8F8F8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonText(
                    text: 'Spicy Crunchy Chicken',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                  CommonSizedBox(
                    height: 5,
                  ),
                  CommonText(
                    text: 'Spicy Crunchy Chicken',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                  CommonSizedBox(
                    height: 5,
                  ),
                  CommonText(
                    text: 'Finnish Salmon & Dill Pie',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                  CommonSizedBox(
                    height: 5,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CommonText(
                    text: 'X1',
                    fontSize: 12,
                    color: textLight868686,
                    fontWeight: FontWeight.w400,
                  ),
                  CommonSizedBox(
                    height: 5,
                  ),
                  CommonText(
                    text: 'X2',
                    color: textLight868686,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  CommonSizedBox(
                    height: 5,
                  ),
                  CommonText(
                    text: 'X3',
                    fontSize: 12,
                    color: textLight868686,
                    fontWeight: FontWeight.w400,
                  ),
                  CommonSizedBox(
                    height: 5,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CommonText(
                    text: '\$ 42.90',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  CommonSizedBox(
                    height: 5,
                  ),
                  CommonText(
                    text: '\$ 42.90',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  CommonSizedBox(
                    height: 5,
                  ),
                  CommonText(
                    text: '\$ 42.90',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  CommonSizedBox(
                    height: 5,
                  ),
                ],
              ),
            ],
          ),
          CommonSizedBox(
            height: 13,
          ),
          Container(
            height: 1,
            width: Get.width,
            color: whiteE5E5E5,
          ),
          CommonSizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CommonText(
                text: 'Total Amount',
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
              CommonText(
                text: '\$42.05',
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
          CommonSizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CommonText(
                text: 'Tip',
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
              CommonText(
                text: 'None',
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
          CommonSizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CommonText(
                text: 'Total Booking Amount',
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
              CommonText(
                text: '-\$100.00',
                fontSize: 12,
                color: redE2211C,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
          CommonText(
            textAlign: TextAlign.left,
            text:
                'This amount will be charge at booking confirmation\nand will be deduct on your total bill amount',
            fontSize: 10,
            color: textLight868686,
            fontWeight: FontWeight.w400,
          ),
          CommonSizedBox(
            height: 15,
          ),
          Container(
            height: 1,
            width: Get.width,
            color: whiteE5E5E5,
          ),
          CommonSizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CommonText(
                text: 'Grand Total',
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
              CommonText(
                text: '\$115.05',
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
