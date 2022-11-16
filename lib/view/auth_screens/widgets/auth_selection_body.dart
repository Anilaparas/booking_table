import 'package:booking_table/utils/common/common_strings.dart';
import 'package:booking_table/utils/common/widgets_methods/common_text.dart';
import 'package:booking_table/view/auth_screens/widgets/auth_selection_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthSelectionBody extends StatelessWidget {
  const AuthSelectionBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // TOP
            SizedBox(height: Get.height * 0.15),
            // Middle View
            AuthScreenViewWidget(),
            // Bottom
            Column(
              children: [
                // Button
                InkWell(
                  onTap: () {
                    Get.toNamed('/home');
                  },
                  child: CommonText(
                    text: 'Continue as Guest',
                    color: redE2211C,
                    decoration: TextDecoration.underline,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
