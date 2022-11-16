import 'package:booking_table/controller/notification_screen/notification_screen_controller.dart';
import 'package:booking_table/utils/common/common_strings.dart';
import 'package:booking_table/utils/common/widgets_methods/common_sized_box.dart';
import 'package:booking_table/utils/common/widgets_methods/common_text.dart';
import 'package:booking_table/view/notifications/widgets/notification_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:get/get.dart';

class NotificationBody extends StatelessWidget {
  const NotificationBody({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final NotificationScreenController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 97,
          decoration: BoxDecoration(
              color: whiteF8F8F8, borderRadius: BorderRadius.circular(7)),
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              // TOGGLE SWITCH
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonText(
                    text: 'Settings',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  AdvancedSwitch(
                    width: 31.0,
                    height: 16.0,
                    borderRadius: BorderRadius.circular(0),
                    inactiveColor: const Color(0xFFD9D9D9),

                    // padding: 8.0,
                  ),
                ],
              ),
              CommonSizedBox(
                height: 11,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.info,
                    color: Colors.red,
                    size: 17,
                  ),
                  CommonSizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: CommonText(
                      text:
                          'You can make your toggle on/off for getting notifications',
                      color: textLight868686,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
            ],
          ),
        ).paddingSymmetric(horizontal: 20),
        CommonSizedBox(
          height: 20,
        ),
        Container(
          height: 1,
          width: Get.width,
          color: whiteE5E5E5,
        ),
        CommonSizedBox(
          height: 20,
        ),
        // NOTIFICATION
        Column(
          children: const [
            NotificationWidget(),
            NotificationWidget(),
            NotificationWidget(),
          ],
        ).paddingSymmetric(horizontal: 20),
      ],
    );
  }
}
