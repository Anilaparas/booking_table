import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReservationController extends GetxController
    with  GetSingleTickerProviderStateMixin{
  late TabController tabController;
  final myTabs = [
    const Tab(
      // child: Container(
      //   height: 56,
      //   width: 156,
      //   color: Colors.black,
      // ),
      text: 'Upcoming',
    ),
    const Tab(text: 'Previous'),
  ];
  @override
  void onInit() {
    // TODO: implement onInit
    tabController = TabController(length: 2, vsync: this);
    super.onInit();
  }
}
