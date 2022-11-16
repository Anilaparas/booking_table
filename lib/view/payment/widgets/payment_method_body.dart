import 'package:booking_table/utils/common/common_strings.dart';
import 'package:booking_table/utils/common/widgets_methods/common_text.dart';
import 'package:booking_table/view/payment/card_scan_pop_up_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentMethodBody extends StatelessWidget {
  const PaymentMethodBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Stack(
          //   children: [
          //     const AppBarBackButton(),
          //     Center(
          //       child: CommonText(
          //         text: "Payment Method",
          //         fontWeight: FontWeight.w600,
          //         fontSize: 22,
          //         color: black000000,
          //         textAlign: TextAlign.center,
          //       ),
          //     ),
          //   ],
          // ),
          //
          // const SizedBox(
          //   height: 35,
          // ),
          CommonText(
            text: "Add More",
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: black000000,
          ),
          const SizedBox(
            height: 17,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const InfoIcon(),
              const Icon(
                Icons.info,
                size: 16,
                color: redE2211C,
              ),
              const SizedBox(
                width: 7,
              ),
              Expanded(
                // width: MediaQuery.of(context).size.width - 60,
                child: CommonText(
                  text:
                      "You can add another credit card by simply scanning your card.",
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: textGrey868686,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Get.to(() => CardScanPopUpView());
            },
            child: Center(
              child: Container(
                width: 188,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: black0D0000),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.add,
                        color: white,
                        size: 12,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      CommonText(
                        text: "Add Card",
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: white,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Image.asset(lineImage),
          const SizedBox(
            height: 30,
          ),
          CommonText(
            text: "Saved Cards",
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: black0D0000,
          ),
          const SizedBox(
            height: 8,
          ),
          ListView.builder(
              itemCount: 2,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: white,
                          boxShadow: const [
                            BoxShadow(
                              color: white0F000000,
                              offset: Offset(
                                0.0,
                                5.0,
                              ),
                            ),
                          ]),
                      child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            children: [
                              Image.asset(
                                cardImage,
                                width: 31,
                                height: 22,
                              ),
                              const SizedBox(
                                width: 14,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CommonText(
                                    text: "****-*****-3455",
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: black0D0000,
                                  ),
                                  CommonText(
                                    text: "Wells Fargo Bank",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: textDark3F3E3E,
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Container(
                                width: 16,
                                height: 16,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle, color: red26E2211C),
                                child: const Icon(
                                  Icons.close,
                                  color: redE2211C,
                                  size: 10,
                                ),
                              ),
                            ],
                          )),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                );
              })
        ],
      ),
    );
  }
}
