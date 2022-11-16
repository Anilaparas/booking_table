import 'package:booking_table/controller/service_type/pre_order_controller.dart';
import 'package:booking_table/utils/common/common_strings.dart';

import 'package:booking_table/utils/common/widgets_methods/common_button.dart';
import 'package:booking_table/utils/common/widgets_methods/common_sized_box.dart';
import 'package:booking_table/utils/common/widgets_methods/common_text.dart';
import 'package:booking_table/utils/common/widgets_methods/restaurant_name_distance.dart';
import 'package:booking_table/view/service_type/widgets/pre_order_main_course_items.dart';
import 'package:booking_table/view/service_type/widgets/pre_order_popular_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PreOrderBody extends StatelessWidget {
  const PreOrderBody({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final PreOrderController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CommonRestaurantNameDistance(),
          Container(
            margin: const EdgeInsets.only(bottom: 18.0, top: 26.0),
            height: 1,
            width: Get.width,
            color: textLight868686,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CommonText(
                  text: 'Menu',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
                CommonSizedBox(
                  height: 10,
                ),
                CommonText(
                  text: 'Popular Items',
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
                CommonSizedBox(
                  height: 10,
                ),
                PopularItemsWidgets(controller: controller),
                CommonSizedBox(
                  height: 10,
                ),
                CommonText(
                  text: 'Main Course',
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
                CommonSizedBox(
                  height: 12,
                ),
                MainCourseItemsWidgets(controller: controller),
              ],
            ),
          ),
          Container(
            height: 50,
            width: Get.width,
            decoration: BoxDecoration(
                color: redE2211C, borderRadius: BorderRadius.circular(5)),
            margin: const EdgeInsets.only(
              top: 0,
              bottom: 30,
              right: 20,
              left: 20,
            ),
            child: CommonButton(
              onTap: () {
                Get.toNamed('/full-service-with-pre-order');
              },
              text: 'Add',
              bgColor: redE2211C,
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
