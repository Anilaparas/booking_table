// ignore_for_file: must_be_immutable

import 'package:booking_table/controller/notification_screen/notification_screen_controller.dart';
import 'package:booking_table/utils/common/widgets_methods/common_app_bar.dart';
import 'package:booking_table/view/notifications/widgets/notification_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationView extends StatelessWidget {
  NotificationView({Key? key}) : super(key: key);

  NotificationScreenController controller =
      Get.put(NotificationScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarCommon(
        text: 'Notifications',
      ),
      // BODY
      body: NotificationBody(controller: controller),
    );
  }
}
