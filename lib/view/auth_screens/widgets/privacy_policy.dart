import 'package:booking_table/controller/authentication/register_controller.dart';
import 'package:booking_table/utils/common/common_strings.dart';
import 'package:booking_table/utils/common/widgets_methods/common_sized_box.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// PRIVACY POLICY & TERMS N CONDITIONS
Column privacyPolicyNTerms() {
  RegisterController controller = Get.find();
  return Column(
    children: <Widget>[
      CommonSizedBox(height: 58),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Obx(() {
            return Checkbox(
              value: controller.isChecked.value,
              onChanged: (value) {
                controller.updateCheckbox();
              },
              fillColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) {
                  return Colors.white;
                }
                return Colors.red;
              }),
            );
          }),
          Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                      text: 'I agree with all ',
                      style: TextStyle(color: textDark3F3E3E, fontSize: 14)),
                  TextSpan(
                    text: 'Terms & Conditions',
                    style: const TextStyle(
                      color: black040404,
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // TODO : TERMS & CONDITIONS
                        Get.toNamed('/terms-and-conditions');
                      },
                  ),
                  const TextSpan(
                      text: ' and ',
                      style: TextStyle(
                        color: textDark3F3E3E,
                        fontSize: 14,
                      )),
                  TextSpan(
                    text: 'Privacy Policy',
                    style: const TextStyle(
                      color: black040404,
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // TODO : PRIVACY POLICY
                        Get.toNamed('/privacy-policy');
                      },
                  ),
                  const TextSpan(
                    text: '.',
                    style: TextStyle(
                      color: textDark3F3E3E,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      CommonSizedBox(height: 15),
    ],
  );
}
