// ignore_for_file: must_be_immutable

import 'package:booking_table/utils/common/common_strings.dart';

import 'package:booking_table/utils/common/widgets_methods/common_button.dart';
import 'package:booking_table/utils/common/widgets_methods/common_sized_box.dart';
import 'package:booking_table/utils/common/widgets_methods/common_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FullSummaryBookingDetailsView extends StatelessWidget {
  String? callFrom;
  FullSummaryBookingDetailsView({
    this.callFrom,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: ExpansionTile(
        backgroundColor: whiteF2F2F2,
        trailing: const Icon(
          Icons.arrow_drop_down_outlined,
          color: black000000,
        ),
        collapsedBackgroundColor: whiteF2F2F2,
        title: CommonText(
          color: black000000,
          text: 'Booking Details',
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        children: [
          Container(
            margin: const EdgeInsets.only(
              bottom: 20.0,
            ),
            height: 1,
            width: Get.width * 0.9,
            color: redE2211C,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonText(
                          text: 'Date',
                          color: textLight868686,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                        CommonSizedBox(
                          height: 5,
                        ),
                        CommonText(
                          color: black000000,
                          text: '24 may, 2022',
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonText(
                          text: 'Time',
                          color: textLight868686,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                        CommonSizedBox(
                          height: 5,
                        ),
                        CommonText(
                          color: black000000,
                          text: '09:00 PM',
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                  ],
                ),
                CommonSizedBox(
                  height: 25,
                ),
                CommonText(
                  text: 'Party Size',
                  color: textLight868686,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
                CommonSizedBox(
                  height: 5,
                ),
                CommonText(
                  color: black000000,
                  text: '5 Members',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
                CommonSizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              bottom: 20.0,
            ),
            height: 1,
            width: Get.width * 0.9,
            color: redE2211C,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                callFrom == 'Pre Order'
                    ? Column(
                        children: [
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
                                  onTap: () {
                                    Get.toNamed('pre-order');
                                  },
                                  text: 'Add More',
                                  bgColor: redF2E6E6,
                                  fontSize: 14,
                                  textColor: redE2211C,
                                ),
                              ),
                            ],
                          ),
                          CommonSizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              left: 10,
                              right: 10,
                              top: 13,
                              bottom: 30,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CommonText(
                                          fontWeight: FontWeight.w500,
                                          text: 'Spicy Crunchy Chicken',
                                          fontSize: 15,
                                        ),
                                        CommonText(
                                          fontWeight: FontWeight.w500,
                                          text: 'Quantity: 2',
                                          fontSize: 12,
                                          color: textLight868686,
                                        ),
                                      ],
                                    ),
                                    const Icon(
                                      Icons.close,
                                      color: Colors.black,
                                      size: 18,
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 15, bottom: 15),
                                  width: Get.width,
                                  height: 1,
                                  color: whiteE5E5E5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CommonText(
                                          fontWeight: FontWeight.w500,
                                          text: 'Spicy Crunchy Chicken',
                                          fontSize: 15,
                                        ),
                                        CommonText(
                                          fontWeight: FontWeight.w500,
                                          text: 'Quantity: 2',
                                          fontSize: 12,
                                          color: textLight868686,
                                        ),
                                      ],
                                    ),
                                    const Icon(
                                      Icons.close,
                                      color: Colors.black,
                                      size: 18,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    : Row(
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
                              onTap: () {
                                Get.toNamed('pre-order');
                              },
                              text: 'Place Order',
                              bgColor: redF2E6E6,
                              fontSize: 14,
                              textColor: redE2211C,
                            ),
                          ),
                        ],
                      ),
                CommonSizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    alignment: Alignment.center,
                    height: 33,
                    width: 181,
                    decoration: BoxDecoration(
                      color: black000000,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 16,
                        ),
                        CommonSizedBox(
                          width: 9,
                        ),
                        InkWell(
                          onTap: () {
                            Get.toNamed('/edit-a-table');
                          },
                          child: CommonText(
                            text: 'Edit Your Booking',
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ).paddingOnly(bottom: 28),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
