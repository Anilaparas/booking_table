// ignore_for_file: must_be_immutable

import 'package:booking_table/controller/add_card_details/add_card_details_controller.dart';
import 'package:booking_table/utils/common/common_strings.dart';

import 'package:booking_table/utils/common/widgets_methods/common_sized_box.dart';
import 'package:booking_table/utils/common/widgets_methods/common_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/common/widgets_methods/common_text_form_field.dart';

class AddCardDetailsRowThree extends StatelessWidget {
  AddCardDetailsRowThree({
    Key? key,
  }) : super(key: key);
  AddCardDetailsController controller = Get.put(AddCardDetailsController());

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CommonText(
                text: 'Exp. Date',
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              CommonSizedBox(
                height: 6,
              ),
              InkWell(
                onTap: () async {
                  await controller.selectDate();
                },
                child: CommonTextFormField(
                  enable: false,
                  hintText: 'DD/MM',
                  controller: controller.cardExpiryDate,
                  suffixIcon: const Icon(Icons.arrow_drop_down),
                  filled: true,
                  fillColor: whiteF4F4F4,
                ),
              ),
              CommonSizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        CommonSizedBox(
          width: 32,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CommonText(
                text: 'Cvv',
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              CommonSizedBox(
                height: 6,
              ),
              CommonTextFormField(
                hintText: '***',
                keyboardType: TextInputType.number,
                obscureText: true,
                maxLines: 1,
                filled: true,
                fillColor: whiteF4F4F4,
              ),
              CommonSizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AddCardDetailsRowTwo extends StatelessWidget {
  const AddCardDetailsRowTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonText(
          text: 'Credit Card Number',
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        CommonSizedBox(
          height: 6,
        ),
        CommonTextFormField(
          hintText: 'Enter Card Number',
          filled: true,
          fillColor: whiteF4F4F4,
          keyboardType: TextInputType.number,
        ),
        CommonSizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class AddCardDetailsRowOne extends StatelessWidget {
  const AddCardDetailsRowOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonText(
          text: 'Card Holder Name',
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        CommonSizedBox(
          height: 6,
        ),
        CommonTextFormField(
          hintText: 'Enter Card Holder Name',
          filled: true,
          fillColor: whiteF4F4F4,
        ),
        CommonSizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class AddCardDetailsPrivacyPolicy extends StatelessWidget {
  const AddCardDetailsPrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // CommonSizedBox(height: 58),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Checkbox(
              value: true,
              onChanged: null,
              fillColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) {
                  return Colors.red;
                }
                return Colors.white;
              }),
            ),
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
        CommonSizedBox(height: 35),
      ],
    );
  }
}
