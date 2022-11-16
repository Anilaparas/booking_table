import 'package:booking_table/utils/common/common_strings.dart';
import 'package:booking_table/utils/common/widgets_methods/common_sized_box.dart';
import 'package:booking_table/utils/common/widgets_methods/common_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpComingReservations extends StatelessWidget {
  const UpComingReservations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Get.toNamed('/upcoming-booking');
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
              child: Container(
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(0, 4),
                          color: Color.fromRGBO(0, 0, 0, 0.06),
                          blurRadius: 10)
                    ]),
                child: Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          children: [
                            Container(
                              height: 118,
                              width: 98,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(6),
                                    topRight: Radius.circular(6)),
                                image: DecorationImage(
                                  image: AssetImage(bookATableImage),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(6),
                                  bottomRight: Radius.circular(6),
                                ),
                              ),
                              height: 18,
                              width: 98,
                              alignment: Alignment.center,
                              child: CommonText(
                                text: 'Full Service',
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                CommonText(
                                  text: 'Venisa’s Kitchen',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                                CommonSizedBox(
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Icon(Icons.place),
                                    Expanded(
                                      child: CommonText(
                                        color: textDark3F3E3E,
                                        text:
                                            '6363 Montana Ave, El Paso, Texas, Montgo- mery, 35004',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: interFont,
                                      ),
                                    ),
                                  ],
                                ),
                                CommonSizedBox(
                                  height: 18,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: <Widget>[
                                        const Icon(
                                          size: 10,
                                          Icons.calendar_month,
                                          color: redE2211C,
                                        ),
                                        CommonText(
                                          text: '24 July, 2022',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: interFont,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        const Icon(
                                          Icons.watch_later,
                                          color: redE2211C,
                                          size: 10,
                                        ),
                                        CommonText(
                                          text: '09:30 PM',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: interFont,
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
