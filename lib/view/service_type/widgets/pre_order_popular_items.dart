import 'package:booking_table/controller/service_type/pre_order_controller.dart';
import 'package:booking_table/utils/common/common_strings.dart';
import 'package:booking_table/utils/common/widgets_methods/common_sized_box.dart';
import 'package:booking_table/utils/common/widgets_methods/common_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopularItemsWidgets extends StatelessWidget {
  const PopularItemsWidgets({
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
                        color: textLight868686,
                        height: 22,
                        width: 64,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  controller.decrement();
                                },
                                child: Container(
                                    color: Colors.black,
                                    height: 22,
                                    width: 21,
                                    alignment: Alignment.center,
                                    child: CommonText(
                                      text: '-',
                                      color: Colors.white,
                                      fontSize: 18,
                                      textAlign: TextAlign.center,
                                    )),
                              ),
                            ),
                            Obx(() => Expanded(
                                  child: CommonText(
                                    textAlign: TextAlign.center,
                                    text: controller.count.value.toString(),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  controller.increment();
                                },
                                child: Container(
                                  color: Colors.black,
                                  height: 22,
                                  width: 21,
                                  alignment: Alignment.center,
                                  child: CommonText(
                                    text: '+',
                                    color: Colors.white,
                                    fontSize: 18,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ],
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
