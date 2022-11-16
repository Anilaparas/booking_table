import 'package:booking_table/controller/reservation/reservation_controller.dart';
import 'package:booking_table/utils/common/common_strings.dart';

import 'package:booking_table/view/reservation/widgets/previous_reservation.dart';
import 'package:booking_table/view/reservation/widgets/upcoming_reservation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReservationViewBody extends StatelessWidget {
  const ReservationViewBody({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final ReservationController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: Get.width,
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: greyEAEAEA),
            ),
            padding: const EdgeInsets.all(3),
            child: TabBar(
              controller: controller.tabController,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(6), color: black0D0000),
              tabs: controller.myTabs,
              labelStyle:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              unselectedLabelColor: textLight868686,
            ),
          ),
        ),
        //  const SizedBox(height: 20,),
        Expanded(
          child: TabBarView(
            controller: controller.tabController,
            children: const [
              UpComingReservations(),
              PreviousReservations(),
            ],
          ),
        ),
      ],
    );
  }
}
