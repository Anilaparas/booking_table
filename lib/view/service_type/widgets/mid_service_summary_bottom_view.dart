// ignore_for_file: must_be_immutable

import 'package:booking_table/controller/service_type/summary_controller.dart';
import 'package:booking_table/utils/common/common_strings.dart';

import 'package:booking_table/utils/common/widgets_methods/common_button.dart';
import 'package:booking_table/utils/common/widgets_methods/common_sized_box.dart';
import 'package:booking_table/utils/common/widgets_methods/common_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:get/get.dart';

import '../../../utils/common/widgets_methods/common_text_form_field.dart';

class MidSummaryBottomView extends StatelessWidget {
  MidSummaryBottomView({
    Key? key,
  }) : super(key: key);
  SummaryController controller = Get.put(SummaryController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonText(
                textAlign: TextAlign.left,
                text: 'Payment Method',
                color: black000000,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              CommonSizedBox(
                height: 20,
              ),
              CommonTextFormField(
                fillColor: whiteF5F5F5,
                filled: true,
                suffixIcon: const Icon(Icons.arrow_drop_down),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 18.0, top: 26.0),
          height: 1,
          width: Get.width,
          color: textLight868686,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonText(
                textAlign: TextAlign.left,
                text: 'Special Event',
                color: black000000,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              CommonSizedBox(
                height: 20,
              ),
              CommonTextFormField(
                fillColor: whiteF5F5F5,
                filled: true,
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 18.0, top: 26.0),
          height: 1,
          width: Get.width,
          color: textLight868686,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonText(
                textAlign: TextAlign.left,
                text: 'Allergies/Special Requests',
                color: black000000,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              CommonSizedBox(
                height: 20,
              ),
              CommonTextFormField(
                fillColor: whiteF5F5F5,
                filled: true,
                hintText: 'Type Here...',
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 18.0, top: 26.0),
          height: 1,
          width: Get.width,
          color: textLight868686,
        ),
        // ADD A TIP
        AddATipWidget(controller: controller),
        CommonButton(
          text: 'Confirm Booking',
          textColor: Colors.white,
          bgColor: redE2211C,
        ).paddingOnly(left: 20, right: 20),
        CommonSizedBox(
          height: 30,
        ),
      ],
    );
  }
}

class AddATipWidget extends StatelessWidget {
  const AddATipWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final SummaryController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommonText(
            textAlign: TextAlign.left,
            text: 'Add Tip',
            color: black000000,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          CommonSizedBox(
            height: 20,
          ),
          Center(
            child: Obx(
              () => FlutterToggleTab(
                height: 37,
                width: 75,
                borderRadius: 5,
                // marginSelected: const EdgeInsets.only(left: 10, right: 10),
                selectedIndex: controller.selectTipPrice.value,
                selectedBackgroundColors: const [Colors.black],
                selectedTextStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
                unSelectedTextStyle: const TextStyle(
                    color: textLight868686,
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
                labels: controller.listOfTipPrice,
                selectedLabelIndex: (index) => controller.selectTipPrice(index),
                isScroll: false,
              ),
            ),
          ),
          CommonSizedBox(
            height: 15,
          ),
          CommonTextFormField(
            hintText: 'Enter tip percentage',
            fillColor: whiteF5F5F5,
            filled: true,
          ),
          CommonSizedBox(
            height: 41,
          ),
        ],
      ),
    );
  }
}
