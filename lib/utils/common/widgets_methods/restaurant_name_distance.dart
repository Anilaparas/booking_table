import 'package:booking_table/utils/common/common_strings.dart';
import 'package:booking_table/utils/common/widgets_methods/common_sized_box.dart';
import 'package:booking_table/utils/common/widgets_methods/common_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonRestaurantNameDistance extends StatelessWidget {
  const CommonRestaurantNameDistance({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: Get.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.06),
              offset: Offset(0, 4),
              blurRadius: 10,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              bookATableImage,
              height: 57,
              width: 57,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonText(
                  text: 'Venisa’s Kitchen',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                CommonSizedBox(
                  height: 5,
                ),
                CommonText(
                  text: '5 miles away',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: textLight868686,
                ),
              ],
            ).paddingOnly(left: 11.0),
          ],
        ).paddingOnly(left: 11, right: 11, top: 12, bottom: 12),
      ),
    );
  }
}
