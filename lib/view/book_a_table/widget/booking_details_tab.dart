import 'package:booking_table/utils/common/common_strings.dart';
import 'package:booking_table/utils/common/widgets_methods/common_sized_box.dart';
import 'package:booking_table/utils/common/widgets_methods/common_text.dart';
import 'package:flutter/material.dart';

class BookingDetailsTab extends StatelessWidget {
  final String callFrom;

  const BookingDetailsTab({
    required this.callFrom,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // BOOKING DEATIS TOP VIEW
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonText(
              text: 'Booking Details',
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            CommonSizedBox(
              height: 20,
            ),
            CommonText(
              text: 'Date',
              color: textLight868686,
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
            CommonSizedBox(
              height: 5,
            ),
            CommonText(
              color: black000000,
              text: '24 may, 2022',
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
            CommonSizedBox(
              height: 25,
            ),
            CommonText(
              text: 'Party Size',
              color: textLight868686,
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
            CommonSizedBox(
              height: 5,
            ),
            CommonText(
              color: black000000,
              text: '2 Members',
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
            // CommonSizedBox(
            //   height: 25,
            // ),
            // CommonText(
            //   text: 'Type of Food',
            //   color: textLight868686,
            //   fontSize: 13,
            //   fontWeight: FontWeight.w400,
            // ),
            // CommonSizedBox(
            //   height: 5,
            // ),
            // CommonText(
            //   color: black000000,
            //   text: 'Continental',
            //   fontSize: 15,
            //   fontWeight: FontWeight.w400,
            // ),
            // CommonSizedBox(
            //   height: 25,
            // ),
            // CommonText(
            //   text: 'Tip',
            //   color: textLight868686,
            //   fontSize: 13,
            //   fontWeight: FontWeight.w400,
            // ),
            // CommonSizedBox(
            //   height: 5,
            // ),
            // CommonText(
            //   color: black000000,
            //   text: 'None',
            //   fontSize: 15,
            //   fontWeight: FontWeight.w400,
            // ),
          ],
        ),
        // BOOKING DEATIS BOTTOM VIEW
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            callFrom == 'Upcoming'
                ? Container(
                    height: 25,
                    width: 72,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      color: Colors.black,
                    ),
                    child: CommonText(
                      text: 'Upcoming',
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      textAlign: TextAlign.center,
                    ),
                  )
                : Container(
                    height: 25,
                    width: 72,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      color: Colors.green,
                    ),
                    child: CommonText(
                      text: 'Completed',
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      textAlign: TextAlign.center,
                    ),
                  ),
            CommonSizedBox(
              height: 15,
            ),
            CommonText(
              text: 'Date',
              color: textLight868686,
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
            CommonSizedBox(
              height: 5,
            ),
            CommonText(
              color: black000000,
              text: '24 may, 2022',
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
            CommonSizedBox(
              height: 25,
            ),
            CommonText(
              text: 'Special Occasion',
              color: textLight868686,
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
            CommonSizedBox(
              height: 5,
            ),
            CommonText(
              color: black000000,
              text: 'Anniversary',
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
            // CommonSizedBox(
            //   height: 25,
            // ),
            // CommonText(
            //   text: 'Tip',
            //   color: textLight868686,
            //   fontSize: 13,
            //   fontWeight: FontWeight.w400,
            // ),
            // CommonSizedBox(
            //   height: 5,
            // ),
            // CommonText(
            //   color: black000000,
            //   text: 'None',
            //   fontSize: 15,
            //   fontWeight: FontWeight.w400,
            // ),
          ],
        ),
      ],
    );
  }
}
