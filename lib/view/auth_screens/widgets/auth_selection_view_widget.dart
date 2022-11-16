// ignore_for_file: must_be_immutable

import 'package:booking_table/utils/common/common_strings.dart';
import 'package:booking_table/utils/common/widgets_methods/common_button.dart';
import 'package:booking_table/utils/common/widgets_methods/common_sized_box.dart';
import 'package:booking_table/utils/common/widgets_methods/common_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthScreenViewWidget extends StatelessWidget {
  AuthScreenViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // LOGO
        Image.asset(
          authSelectScreenLogo,
          height: 54,
          width: 143,
        ),
        CommonSizedBox(height: 26),
        // WELCOME TEXT
        CommonText(
          text: 'Welcome!',
          color: black040404,
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
        CommonSizedBox(height: 20),
        // SIGNIN BUTTON
        CommonButton(
          text: 'Sign In',
          bgColor: redE2211C,
          onTap: () {
            //  controller.selectedCountry.phoneCode;
            // print(
            //     "countryCode ---->${ controller.selectedCountry.phoneCode}");
            // TODO: Sign In Functionality
            Get.toNamed('/login');
          },
          textColor: Colors.white,
        ),
        CommonSizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              dividerImage,
              width: 91,
            ),
            const SizedBox(
              width: 10,
            ),
            CommonText(
              text: 'OR',
              color: textLight868686,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            const SizedBox(
              width: 10,
            ),
            Image.asset(
              dividerImage,
              width: 91,
            ),
          ],
        ),
        CommonSizedBox(height: 20),
        CommonText(
            text: 'No Account?',
            color: textLight868686,
            fontWeight: FontWeight.w400,
            fontSize: 14),
        CommonSizedBox(height: 10),
        // REGISTER BUTTON
        CommonButton(
          onTap: () {
            Get.toNamed('/register');
          },
          text: 'Sign Up',
          bgColor: black000000,
          textColor: Colors.white,
        ),
        CommonSizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              dividerImage,
              width: 91,
            ),
            const SizedBox(
              width: 10,
            ),
            CommonText(
              text: 'OR',
              color: textLight868686,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            const SizedBox(
              width: 10,
            ),
            Image.asset(
              dividerImage,
              width: 91,
            ),
          ],
        ),
        CommonSizedBox(height: 20),
        CommonText(
          text: 'Continue with',
          color: black000000,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        // SOCIAL SIGN IN
        CommonSizedBox(height: 15),
        _iconRow(),
      ],
    );
  }

  // SOCIAL SIGN IN
  Row _iconRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          facebookLogo,
          height: 46,
          width: 70,
        ),
        CommonSizedBox(width: 20),
        Image.asset(
          googleLogo,
          height: 46,
          width: 70,
        ),
        GetPlatform.isIOS
            ? Row(
                children: [
                  CommonSizedBox(width: 20),
                  Image.asset(
                    appleLogo,
                    height: 46,
                    width: 70,
                  ),
                ],
              )
            : Container(),
      ],
    );
  }
}
