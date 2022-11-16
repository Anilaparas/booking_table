import 'package:booking_table/controller/book_a_table/book_a_table_controller.dart';
import 'package:booking_table/utils/common/common_strings.dart';
import 'package:booking_table/utils/common/widgets_methods/common_button.dart';
import 'package:booking_table/utils/common/widgets_methods/common_sized_box.dart';
import 'package:booking_table/utils/common/widgets_methods/common_text.dart';
import 'package:booking_table/utils/common/widgets_methods/restaurant_name_distance.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/common/widgets_methods/common_date_picker_widget.dart';
import '../../../utils/common/widgets_methods/common_text_form_field.dart';

class BookATableBody extends StatelessWidget {
  BookATableBody({
    Key? key,
  }) : super(key: key);

  final controller = Get.put(BookATableController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CommonRestaurantNameDistance(),
            Container(
              width: Get.width,
              height: 1,
              color: whiteE5E5E5,
            ).paddingOnly(
              top: 20,
              bottom: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Date
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonText(
                      text: 'Date',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    CommonSizedBox(
                      height: 15,
                    ),
                    const CommonDatePicker(
                      fillColor: greyF5F5F5,
                    )
                  ],
                ).paddingOnly(
                  left: 20,
                  right: 20,
                ),
                // InkWell(
                //   onTap: () async {
                //     await controller.selectDate();
                //     if (kDebugMode) {
                //       print('Button Clicked');
                //     }
                //   },
                //   child: CommonTextFormField(
                //     enable: false,
                //     controller: controller.bookingDate,
                //     suffixIcon: const Icon(
                //       Icons.calendar_month,
                //       color: Colors.red,
                //     ),
                //     color: whiteF5F5F5,
                //   ),
                // ),
                Container(
                  width: Get.width,
                  height: 1,
                  color: whiteE5E5E5,
                ).paddingOnly(
                  top: 20,
                  bottom: 20,
                  left: 0,
                  right: 0,
                ),
                // Time
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonText(
                      text: 'Time',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    CommonSizedBox(
                      height: 15,
                    ),
                    // const CommonTextField(
                    //   hint: "09:00 PM",
                    // ),
                    CommonTextFormField(
                      hintText: "09:00 PM",
                      filled: true,
                      fillColor: greyF5F5F5,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ).paddingOnly(
                  left: 20,
                  right: 20,
                ),

                // InkWell(
                //   onTap: () async {
                //     await controller.selectTime();
                //     if (kDebugMode) {
                //       print('Button Clicked');
                //     }
                //   },
                //   child: CommonTextFormField(
                //     enable: false,
                //     controller: controller.bookingTime,
                //     color: whiteF5F5F5,
                //   ),
                // ),
                Container(
                  width: Get.width,
                  height: 1,
                  color: whiteE5E5E5,
                ).paddingOnly(
                  top: 20,
                  bottom: 20,
                ),
                // Party SIze
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonText(
                      text: 'Party Size',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    CommonSizedBox(
                      height: 15,
                    ),
                    // CommonTextFormField(
                    //   controller: controller.partySize,
                    //   color: whiteF5F5F5,
                    //   keyboardType: TextInputType.number,
                    //   maxLength: 2,
                    // ),
                    // const CommonTextField(
                    //   hint: "",
                    // ),
                    CommonTextFormField(
                      hintText: "5",
                      filled: true,
                      fillColor: greyF5F5F5,
                    ),
                  ],
                ).paddingOnly(
                  left: 20,
                  right: 20,
                ),
                Container(
                  width: Get.width,
                  height: 1,
                  color: whiteE5E5E5,
                ).paddingOnly(
                  top: 20,
                  bottom: 20,
                ),
                //  Field Four
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonText(
                      text: 'Types of Services',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    CommonSizedBox(
                      height: 15,
                    ),
                    // Center(
                    //   child: Obx(
                    //     () => Container(
                    //       width: Get.width,
                    //       child: FlutterToggleTab(
                    //         height: 37,
                    //        width: 85,
                    //
                    //         borderRadius: 5,
                    //         // marginSelected: const EdgeInsets.only(left: 10, right: 10),
                    //         selectedIndex: controller.selectTypeOfService.value,
                    //         selectedBackgroundColors: const [Colors.black],
                    //         selectedTextStyle: const TextStyle(
                    //             color: Colors.white,
                    //             fontWeight: FontWeight.w400,
                    //             fontSize: 14),
                    //         unSelectedTextStyle: const TextStyle(
                    //             color: textLight868686,
                    //             fontWeight: FontWeight.w400,
                    //             fontSize: 14),
                    //         labels: controller.listOfServices,
                    //         selectedLabelIndex: (index) =>
                    //             controller.selectService(index),
                    //         isScroll: false,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    Row(
                      children: [
                        typeServiceContainer(
                            "Full",
                            // ignore: unrelated_type_equality_checks
                            controller.serviceType.value == "Full"),
                        const SizedBox(
                          width: 10,
                        ),
                        // ignore: unrelated_type_equality_checks
                        typeServiceContainer(
                            "Mid", controller.serviceType.value == "Mid"),
                        const SizedBox(
                          width: 10,
                        ),
                        // ignore: unrelated_type_equality_checks
                        typeServiceContainer(
                            "No", controller.serviceType.value == "No"),
                        const SizedBox(
                          width: 10,
                        ),
                        // ignore: unrelated_type_equality_checks
                        typeServiceContainer(
                            "To Go", controller.serviceType.value == "To Go"),
                      ],
                    ),
                    CommonSizedBox(
                      height: 15,
                    ),
                    Visibility(
                      visible: controller.serviceType.isNotEmpty,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                              text: controller.serviceType.value == "Full"
                                  ? "Order from server in restaurant"
                                  : controller.serviceType.value == "No"
                                      ? "Pre order food and drink on the app as well as in restaurant. No server"
                                      : controller.serviceType.value == "To Go"
                                          ? "You can take away your order as well."
                                          : "Pre-order food and drink on the app and have a server in restaurant",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: textGrey868686,
                            ),
                          )
                        ],
                      ),
                    ),
                    CommonSizedBox(
                      height: 31,
                    ),
                    // Button
                    InkWell(
                      onTap: () {
                        Get.toNamed('/full-service');
                      },
                      child: CommonButton(
                        textColor: Colors.white,
                        bgColor: redE2211C,
                        text: 'Proceed',
                      ),
                    ),
                    CommonSizedBox(
                      height: 31,
                    ),
                  ],
                ).paddingOnly(
                  left: 20,
                  right: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );

    // );
  }

  typeServiceContainer(text, isSelected) {
    return Expanded(
      child: InkWell(
        onTap: () {
          controller.serviceType.value = text;
          controller.update();
          // isSelected = !isSelected;
        },
        child: Container(
          width: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: isSelected ? black0D0000 : greyF8F8F8),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: CommonText(
                text: text,
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: isSelected ? white : greyA2A2A2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
