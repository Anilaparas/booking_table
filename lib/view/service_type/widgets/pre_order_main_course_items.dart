import 'package:booking_table/controller/service_type/pre_order_controller.dart';
import 'package:booking_table/utils/common/common_strings.dart';
import 'package:booking_table/utils/common/widgets_methods/common_sized_box.dart';
import 'package:booking_table/utils/common/widgets_methods/common_text.dart';
import 'package:flutter/material.dart';

class MainCourseItemsWidgets extends StatelessWidget {
  const MainCourseItemsWidgets({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final PreOrderController controller;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        bookATableImage,
                        height: 49,
                        width: 64,
                        fit: BoxFit.cover,
                      ),
                      CommonSizedBox(
                        height: 4,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(4)),
                        height: 22,
                        width: 64,
                        alignment: Alignment.center,
                        child: CommonText(
                          textAlign: TextAlign.center,
                          text: "Add",
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  CommonSizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonText(
                          text: 'Spicy Crunchy Chicken',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        CommonSizedBox(
                          height: 4,
                        ),
                        CommonText(
                          text:
                              'Creamy Hot Tomato Sauce, Jalapeno with Mozzarella Cheese',
                          fontSize: 12,
                          color: textDark3F3E3E,
                          fontWeight: FontWeight.w400,
                        ),
                        CommonSizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            CommonText(
                              text: 'Price: ',
                              color: textDark3F3E3E,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                            CommonText(
                              text: '\$ 45.98',
                              color: redE2211C,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              CommonSizedBox(
                height: 20,
              ),
            ],
          );
        });
  }
}
