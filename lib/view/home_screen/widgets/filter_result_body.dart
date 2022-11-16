import 'package:booking_table/controller/home/home_controller.dart';
import 'package:booking_table/utils/common/common_strings.dart';
import 'package:booking_table/utils/common/widgets_methods/common_text.dart';
import 'package:booking_table/view/home_screen/widgets/filter_restaurant_widget.dart';
import 'package:booking_table/view/home_screen/widgets/map_home_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilterResultBody extends StatelessWidget {
  const FilterResultBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GetBuilder<HomeController>(builder: (homeController) {
        return Column(
          children: [
            // Padding(
            //   padding: const EdgeInsets.all(15.0),
            // child: Stack(
            //   children: [
            //     const AppBarBackButton(),
            //     Center(
            //       child: CommonText(
            //         text: "Filter Result",
            //         fontSize: 22,
            //         fontWeight: FontWeight.w600,
            //         color: black000000,
            //       ),
            //     )
            //   ],
            // ),
            //),
            // const SizedBox(
            //   height: 35,
            // ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 20, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonText(
                    text: "1 Restaurants",
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
                                homeController.restaurantFilter.value = true;
                                homeController.update();
                              },
                              child: Container(
                                width: 24,
                                height: 25,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: homeController.restaurantFilter.value
                                        ? black000000
                                        : greyF4F4F4),
                                child: Center(
                                    child: Image.asset(
                                  menuImage,
                                  width: 14,
                                  height: 14,
                                  color: homeController.restaurantFilter.value
                                      ? white
                                      : greyC1C1C1,
                                )),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          // HEART ICON
                          InkWell(
                            onTap: () {
                              homeController.restaurantFilter.value = false;
                              homeController.update();
                            },
                            child: Container(
                              width: 24,
                              height: 25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color:
                                      homeController.restaurantFilter.value ==
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
                                          : greyC1C1C1)),
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
                ?
                // FILTERED RESULT
                const FilterRestaurantScreen()
                :
                // MAP HOME SCREEN
                const MapHomeScreen()
          ],
        );
      }),
    );
  }
}
