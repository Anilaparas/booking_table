// ignore_for_file: must_be_immutable

import 'package:booking_table/utils/common/common_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RestaurantZoomBody extends StatelessWidget {
  String imageUrl;
  RestaurantZoomBody({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width - 40,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(6)),
                border: Border.all(color: white, width: 9),
              ),
              child: Image.asset(
                imageUrl.toString(),
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              right: 20,
              top: 20,
              child: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration:
                      const BoxDecoration(shape: BoxShape.circle, color: white),
                  child: const Icon(
                    Icons.close,
                    color: black0D0000,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
