// ignore_for_file: must_be_immutable

import 'package:booking_table/controller/home/home_controller.dart';
import 'package:booking_table/utils/common/common_strings.dart';
import 'package:booking_table/utils/common/widgets_methods/common_sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/common/widgets_methods/common_app_bar.dart';
import '../../utils/common/widgets_methods/common_button.dart';
import '../../utils/common/widgets_methods/common_date_picker_widget.dart';
import '../../utils/common/widgets_methods/common_dropdown_widget.dart';
import '../../utils/common/widgets_methods/common_info_icon.dart';
import '../../utils/common/widgets_methods/common_text.dart';

class FilterView extends StatelessWidget {
  FilterView({Key? key}) : super(key: key);

  HomeController homeController = Get.put(HomeController());
  final dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarCommon(text: "Filter"),
      body: SingleChildScrollView(
        child: GetBuilder<HomeController>(builder: (homeController) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonText(
                    text: "Date",
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: black000000,
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CommonDatePicker(
                    controller: dateController,
                    fillColor: greyF5F5F5,
                  ),
                ],
              ).paddingOnly(top: 15, left: 22, right: 22),
              const SizedBox(
                height: 20,
              ),
              Image.asset(lineImage),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonText(
                    text: "Time",
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: black000000,
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CommonDropDown(
                    hintText: "Select Time",
                  ),
                ],
              ).paddingOnly(left: 22, right: 22),
              const SizedBox(
                height: 20,
              ),
              Image.asset(lineImage),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonText(
                    text: "Party Size",
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: black000000,
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CommonDropDown(
                    hintText: "None",
                  ),
                ],
              ).paddingOnly(left: 22, right: 22),
              const SizedBox(
                height: 20,
              ),
              Image.asset(lineImage),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonText(
                    text: "Type of Service",
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: black000000,
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      typeServiceContainer(
                          "Full",
                          // ignore: unrelated_type_equality_checks
                          homeController.serviceType.value == "Full"),
                      const SizedBox(
                        width: 10,
                      ),
                      // ignore: unrelated_type_equality_checks
                      typeServiceContainer(
                          "Mid", homeController.serviceType.value == "Mid"),
                      const SizedBox(
                        width: 10,
                      ),
                      // ignore: unrelated_type_equality_checks
                      typeServiceContainer(
                          "No", homeController.serviceType.value == "No"),
                      const SizedBox(
                        width: 10,
                      ),
                      // ignore: unrelated_type_equality_checks
                      typeServiceContainer(
                          "To Go ", homeController.serviceType.value == "To Go "),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Visibility(
                    visible: homeController.serviceType.value.isNotEmpty,
                    child: Row(
                      children: [
                        const InfoIcon(),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: CommonText(
                            text: homeController.serviceType.value == "Full"
                                ? "Order from server in restaurant"
                                : homeController.serviceType.value == "No"
                                    ? "Pre order food and drink on the app as well as in restaurant. No server."
                                    : homeController.serviceType.value ==
                                            "To Go"
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
                ],
              ).paddingOnly(left: 22, right: 22),
              const SizedBox(
                height: 20,
              ),
              Image.asset(lineImage),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CommonText(
                        text: "Type of Food ",
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: black000000,
                        textAlign: TextAlign.start,
                      ),
                      CommonText(
                        text: "(optional) ",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: textDark3F3E3E,
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CommonDropDown(
                    hintText: "Select Type",
                  ),
                ],
              ).paddingOnly(left: 22, right: 22),
              const SizedBox(
                height: 20,
              ),
              CommonButton(
                onTap: () {
                  Get.toNamed('/filter-result-screen');
                },
                text: "Apply",
                bgColor: redE2211C,
                textColor: white,
              ).paddingOnly(left: 22, right: 22),
              CommonSizedBox(
                height: 20,
              ),
            ],
          );
        }),
      ),
    );
  }

  typeServiceContainer(text, isSelected) {
    return Expanded(
      child: InkWell(
        onTap: () {
          homeController.serviceType.value = text;
          homeController.update();
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
