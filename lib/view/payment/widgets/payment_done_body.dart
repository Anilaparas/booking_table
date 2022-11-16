import 'package:booking_table/utils/common/common_strings.dart';
import 'package:booking_table/utils/common/widgets_methods/common_button.dart';
import 'package:booking_table/utils/common/widgets_methods/common_sized_box.dart';
import 'package:booking_table/utils/common/widgets_methods/common_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentDoneBody extends StatelessWidget {
  const PaymentDoneBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                paymentDoneCircle,
                height: 81,
                width: 81,
              ),
              Image.asset(
                paymentDoneTick,
                height: 24,
                width: 37,
              ),
            ],
          ),
          CommonSizedBox(
            height: 29,
          ),
          CommonText(
            text: 'Payment Done',
            fontWeight: FontWeight.w700,
            fontSize: 22,
          ),
          CommonSizedBox(
            height: 9,
          ),
          Center(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  const TextSpan(
                      text: 'Your payment has been done\n',
                      style: TextStyle(
                          color: textLight868686,
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                  TextSpan(
                    text: 'by ',
                    style: const TextStyle(
                        color: textLight868686,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // TODO : TERMS & CONDITIONS
                      },
                  ),
                  const TextSpan(
                      text: 'Apple Pay ',
                      style: TextStyle(
                        color: black000000,
                        fontSize: 14,
                      )),
                  TextSpan(
                    text: 'of ',
                    style: const TextStyle(
                      color: textLight868686,
                      fontSize: 14,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // TODO : PRIVACY POLICY
                      },
                  ),
                  const TextSpan(
                    text: '\$999',
                    style: TextStyle(
                      color: black000000,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CommonSizedBox(
            height: 29,
          ),
          // BUTTON
          SizedBox(
            height: 50,
            width: 205,
            child: CommonButton(
              onTap: () {
                Get.toNamed('/reservation');
              },
              text: 'Continue',
              textColor: Colors.white,
              bgColor: redE2211C,
            ),
          ),
        ],
      ),
    );
  }
}
