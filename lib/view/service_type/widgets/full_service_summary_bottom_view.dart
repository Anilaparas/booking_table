// ignore_for_file: must_be_immutable

import 'package:booking_table/controller/service_type/summary_controller.dart';
import 'package:booking_table/utils/common/common_strings.dart';
import 'package:booking_table/utils/common/widgets_methods/common_button.dart';
import 'package:booking_table/utils/common/widgets_methods/common_sized_box.dart';
import 'package:booking_table/utils/common/widgets_methods/common_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/common/widgets_methods/common_text_form_field.dart';

class FullSummaryBottomView extends StatelessWidget {
  FullSummaryBottomView({
    Key? key,
  }) : super(key: key);
  SummaryController controller = Get.put(SummaryController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
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
                hintText: 'Anniversary',
              ),
            ],
          ),
        ),
        // Container(
        //   margin: const EdgeInsets.only(bottom: 18.0, top: 26.0),
        //   height: 1,
        //   width: Get.width,
        //   color: textLight868686,
        // ),
        Container(
          width: Get.width,
          height: 1,
          color: whiteE5E5E5,
        ).paddingOnly(
          top: 5,
          bottom: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(15),
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

                maxLines: 5,
                // fontSize: 16,
              ),
            ],
          ),
        ),
        // Container(
        //   margin: const EdgeInsets.only(bottom: 18.0, top: 26.0),
        //   height: 1,
        //   width: Get.width,
        //   color: textLight868686,
        // ),
        Container(
          width: Get.width,
          height: 1,
          color: whiteE5E5E5,
        ).paddingOnly(
          top: 5,
          bottom: 5,
        ),
        // Payment Method
        const ChoosePaymentMethodWidget(),
        // Container(
        //   margin: const EdgeInsets.only(bottom: 18.0, top: 26.0),
        //   height: 1,
        //   width: Get.width,
        //   color: textLight868686,
        // ),
        Container(
          width: Get.width,
          height: 1,
          color: whiteE5E5E5,
        ).paddingOnly(
          top: 5,
          bottom: 5,
        ),
        // ADD A TIP
        AddATipWidget(controller: controller),
        Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 30, 15, 15),
          child: CommonButton(
            onTap: () {
              Get.toNamed('/payment-done');
            },
            text: 'Confirm Booking',
            textColor: Colors.white,
            bgColor: redE2211C,
          ),
        ),
        // CommonSizedBox(
        //   height: 30,
        // ),
      ],
    );
  }
}

class ChoosePaymentMethodWidget extends StatelessWidget {
  const ChoosePaymentMethodWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommonText(
            textAlign: TextAlign.left,
            text: 'Select Payment Mode',
            color: black000000,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          CommonSizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  height: 32,
                  width: 97,
                  decoration: BoxDecoration(
                      color: whiteF8F8F8,
                      borderRadius: BorderRadius.circular(4)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        venmoLogo,
                        height: 16,
                        width: 16,
                      ),
                      CommonSizedBox(
                        width: 10,
                      ),
                      CommonText(
                        text: 'Venmo',
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: textLight868686,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: Container(
                  height: 32,
                  width: 82,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(4)),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Image.asset(
                        //   appleLogo,
                        //   // height: 17,
                        //   // width: 17,
                        // ),
                        const Icon(
                          Icons.apple,
                          color: white,
                        ),
                        CommonSizedBox(
                          width: 8,
                        ),
                        CommonText(
                          text: 'Apple',
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 21,
              ),
              Expanded(
                child: Container(
                  height: 32,
                  width: 97,
                  decoration: BoxDecoration(
                      color: whiteF8F8F8,
                      borderRadius: BorderRadius.circular(4)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        gPayLogo,
                        height: 15,
                        width: 40,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          CommonSizedBox(
            height: 18,
          ),
          Container(
            height: 32,
            width: 137,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: whiteF8F8F8, borderRadius: BorderRadius.circular(4)),
            child: CommonText(
              textAlign: TextAlign.center,
              text: 'Pay At Restaurant',
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: textLight868686,
            ),
          ),
        ],
      ),
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
      padding: const EdgeInsets.all(15),
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
          // Center(
          //   child: Obx(
          //     () => FlutterToggleTab(
          //       height: 37,
          //       width: 75,
          //       borderRadius: 5,
          //       // marginSelected: const EdgeInsets.only(left: 10, right: 10),
          //       selectedIndex: controller.selectTipPrice.value,
          //       selectedBackgroundColors: const [Colors.black],
          //       selectedTextStyle: const TextStyle(
          //           color: Colors.white,
          //           fontWeight: FontWeight.w400,
          //           fontSize: 14),
          //       unSelectedTextStyle: const TextStyle(
          //           color: textLight868686,
          //           fontWeight: FontWeight.w400,
          //           fontSize: 14),
          //       labels: controller.listOfTipPrice,
          //       selectedLabelIndex: (index) => controller.selectTipPrice(index),
          //       isScroll: false,
          //     ),
          //   ),
          // ),
          Obx(
            () => Row(
              children: [
                addTipContainer(
                    "10%",
                    // ignore: unrelated_type_equality_checks
                    controller.addTip.value == "10%",
                    12.0),
                const SizedBox(
                  width: 10,
                ),
                // ignore: unrelated_type_equality_checks
                addTipContainer("15%", controller.addTip.value == "15%", 12.0),
                const SizedBox(
                  width: 10,
                ),
                // ignore: unrelated_type_equality_checks
                addTipContainer("20%", controller.addTip.value == "20%", 12.0),
                const SizedBox(
                  width: 10,
                ),
                // ignore: unrelated_type_equality_checks
                addTipContainer(
                    "Custom", controller.addTip.value == "Custom", 10.0),
                const SizedBox(
                  width: 10,
                ),
                addTipContainer(
                    "None", controller.addTip.value == "None", 12.0),
              ],
            ),
          ),
          CommonSizedBox(
            height: 15,
          ),
          CommonTextFormField(
            hintText: 'Enter Amount',
            fillColor: whiteF5F5F5,
            filled: true,
          ),
          // CommonSizedBox(
          //   height: 41,
          // ),
        ],
      ),
    );
  }

  addTipContainer(text, isSelected, fontSize) {
    return Expanded(
      child: InkWell(
        onTap: () {
          controller.addTip.value = text;
          // isSelected = !isSelected;
        },
        child: Container(
          width: 56,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: isSelected ? black0D0000 : greyF8F8F8),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: CommonText(
                text: text,
                fontWeight: FontWeight.w400,
                fontSize: fontSize,
                color: isSelected ? white : greyA2A2A2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
