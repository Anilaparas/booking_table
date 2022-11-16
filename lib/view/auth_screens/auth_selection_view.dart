import 'package:booking_table/utils/common/common_strings.dart';
import 'package:booking_table/view/auth_screens/widgets/auth_selection_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/common/widgets_methods/common_text.dart';
class AuthSelectionView extends StatelessWidget {
  const AuthSelectionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: Get.width,
          height: Get.height,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Spacer(),
                  // TOP
                  SizedBox(height: Get.height * 0.15),
                  // Middle View
                  AuthScreenViewWidget(),
                  const Spacer(),
                  // Bottom
                  InkWell(
                    onTap: () {
                      Get.toNamed('/home');
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: CommonText(
                        text: 'Continue as Guest',
                        color: redE2211C,
                        decoration: TextDecoration.underline,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
