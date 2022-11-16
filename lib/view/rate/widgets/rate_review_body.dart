import 'package:booking_table/utils/common/common_strings.dart';
import 'package:booking_table/utils/common/widgets_methods/common_button.dart';
import 'package:booking_table/utils/common/widgets_methods/common_sized_box.dart';
import 'package:booking_table/utils/common/widgets_methods/common_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import '../../../utils/common/widgets_methods/common_text_form_field.dart';

class RateReviewBody extends StatelessWidget {
  const RateReviewBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CommonSizedBox(
              height: 50,
            ),
            Image.asset(
              bookATableImage,
              height: 112,
              width: 112,
            ),
            CommonSizedBox(
              height: 30,
            ),
            CommonText(
              text: 'How was your experience with',
              color: textDark3F3E3E,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            CommonSizedBox(
              height: 6,
            ),
            CommonText(
              text: 'Honeycomb Restaurant',
              color: black000000,
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
            CommonSizedBox(
              height: 40,
            ),
            CommonText(
              text: 'Your feedback matters',
              color: textLight868686,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            CommonSizedBox(
              height: 15,
            ),
            RatingBar.builder(
              initialRating: 3,
              minRating: 0,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              unratedColor: whiteDBDBDB,
              glowColor: yellowFFC107,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                if (kDebugMode) {
                  print(rating);
                  print(Get.height);
                }
              },
            ),
            CommonSizedBox(
              height: 60,
            ),
            CommonText(
              text: 'Leave your reviews',
              color: black000000,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            CommonSizedBox(
              height: 15,
            ),
            CommonTextFormField(
              hintText: 'Type Here...',
              filled: true,
              fillColor: whiteF5F5F5,
              maxLines: 10,
            ).paddingSymmetric(
              horizontal: 22,
            ),
            CommonSizedBox(
              height: 48,
            ),
            CommonButton(
              onTap: () {
                // Get.toNamed('/home');
                Get.toNamed('/previous-booking');
              },
              text: 'Submit',
              bgColor: redE2211C,
              textColor: Colors.white,
            ).paddingAll(22),
          ],
        ),
      ),
    );
  }
}
