import 'package:booking_table/controller/splash_screen/splash_view_controller.dart';
import 'package:booking_table/utils/common/common_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      // assignId: true,
      init: SplashViewController(),
      builder: (builder) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Image.asset(
              splashLogo,
              height: 73,
              width: 285,
            ),
          ),
        );
      },
    );
  }
}
