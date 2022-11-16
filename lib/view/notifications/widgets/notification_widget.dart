import 'package:booking_table/utils/common/common_strings.dart';
import 'package:booking_table/utils/common/widgets_methods/common_sized_box.dart';
import 'package:booking_table/utils/common/widgets_methods/common_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonSizedBox(
      height: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CommonText(
            fontSize: 14,
            text: '22 July, 2022',
            textAlign: TextAlign.start,
            fontWeight: FontWeight.w400,
          ),
          CommonSizedBox(
            height: 15,
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 48,
                  alignment: Alignment.topCenter,
                  width: 48,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFCE9E9),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.paste,
                      color: redE2211C,
                    ),
                  ),
                ),
                CommonSizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(
                                text: '@Josh Cafe ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: redE2211C,
                                    fontSize: 16)),
                            TextSpan(
                              text: 'confirmed your booking for 23 july, 2022',
                              style: const TextStyle(
                                color: black040404,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // TODO : TERMS & CONDITIONS
                                },
                            ),
                          ],
                        ),
                      ),
                      CommonSizedBox(
                        height: 6,
                      ),
                      CommonText(
                        fontSize: 12,
                        text: '3 minutes ago',
                        color: textGrey868686,
                        fontWeight: FontWeight.w400,
                      ),
                      CommonSizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
