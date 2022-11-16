import 'package:booking_table/utils/common/common_strings.dart';
import 'package:booking_table/utils/common/widgets_methods/common_sized_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar appBarCommon({
  String? text,
  dynamic bottom,
}) {
  return AppBar(
    backgroundColor: Colors.white,
    centerTitle: true,
    bottom: bottom,
    title: Text(
      text ?? '',
      style: const TextStyle(
          fontSize: 22,
          color: black000000,
          fontWeight: FontWeight.w600,
          fontFamily: mainLaToFont),
    ),
    elevation: 0,
    leadingWidth: 80,
    leading: InkWell(
      onTap: () {
        Get.back();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CommonSizedBox(
            width: 5,
          ),
          const Icon(
            size: 20,
            Icons.arrow_back,
            color: black000000,
          ),
          CommonSizedBox(
            width: 5,
          ),
          const Text(
            'Back',
            style: TextStyle(
              fontSize: 18,
              color: black000000,
              fontWeight: FontWeight.w400,
              fontFamily: mainLaToFont,
            ),
          ),
        ],
      ),
    ),
  );
}
