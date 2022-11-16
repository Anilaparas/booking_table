import 'package:booking_table/controller/home/home_controller.dart';
import 'package:booking_table/utils/common/common_strings.dart';
import 'package:booking_table/utils/common/widgets_methods/common_sized_box.dart';
import 'package:booking_table/utils/common/widgets_methods/common_text.dart';
import 'package:booking_table/view/home_screen/widgets/map_home_widget.dart';
import 'package:booking_table/view/home_screen/widgets/restaurants_home_widget.dart';
import 'package:booking_table/view/home_screen/widgets/search_home_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
    required this.homeController,
  }) : super(key: key);

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Obx(() => SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 15, 15, 5),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            homeController.drawerKey.currentState!.openDrawer();
                          },
                          child: Stack(
                            children: [
                              Container(
                                width: 49,
                                height: 49,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(profileImage),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Image.asset(drawerImage),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 13,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonText(
                              text: "Claire Fiona",
                              color: black000000,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  color: black000000,
                                  size: 14,
                                ),
                                CommonSizedBox(
                                  width: 2,
                                ),
                                CommonText(
                                  text: "Montgomery, 35004",
                                  color: black000000,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(Icons.keyboard_arrow_down),
                                // Image.asset(
                                //   dropDownIconImage,
                                //   width: 9,
                                //   height: 12,
                                // ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SearchBoxScreen(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 0, 15, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonText(
                          text: "24 Restaurants",
                          fontFamily: interFont,
                          fontWeight: FontWeight.w500,
                          color: black000000,
                          fontSize: 16,
                        ),
                        Container(
                          width: 57,
                          height: 29,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: greyF4F4F4),
                          child: Center(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: InkWell(
                                    onTap: () {
                                      homeController.restaurantFilter.value =
                                          true;
                                    },
                                    child: Container(
                                      width: 24,
                                      height: 25,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          color: homeController
                                                  .restaurantFilter.value
                                              ? black000000
                                              : greyF4F4F4),
                                      child: Center(
                                        child: Image.asset(
                                          menuImage,
                                          width: 14,
                                          height: 14,
                                          color: homeController
                                                  .restaurantFilter.value
                                              ? white
                                              : greyC1C1C1,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                InkWell(
                                  onTap: () {
                                    homeController.restaurantFilter.value =
                                        false;
                                  },
                                  child: Container(
                                    width: 24,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: homeController
                                                    .restaurantFilter.value ==
                                                false
                                            ? black000000
                                            : greyF4F4F4),
                                    child: Center(
                                      child: Image.asset(locationImage,
                                          width: 14,
                                          height: 14,
                                          color: homeController
                                                      .restaurantFilter.value ==
                                                  false
                                              ? white
                                              : greyC1C1C1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  homeController.restaurantFilter.value
                      ? const RestaurantHomeScreen()
                      : const MapHomeScreen(),
                ],
              ),
            ),
          ),
        ));
  }
}
