import 'package:booking_table/utils/common/common_strings.dart';
import 'package:booking_table/utils/common/widgets_methods/common_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/home/home_controller.dart';

class RestaurantHomeScreen extends StatelessWidget {
  const RestaurantHomeScreen({Key? key}) : super(key: key);

  // HomeController homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          GetBuilder<HomeController>(builder: (homeController) {
            return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 7,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: InkWell(
                      onTap: () {
                        Get.toNamed('/restaurant-details');
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                          ),
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: Color.fromRGBO(0, 0, 0, 0.06),
                          //     blurRadius: 4.0,
                          //     offset: Offset(0.0, 10),
                          //   ),
                          // ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 11.0, right: 11.0, top: 11.0),
                              child: Stack(
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    height: 150,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 133,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                            image: AssetImage(restaurantImage),
                                            fit: BoxFit.cover)),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 20,
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: 33,
                                      height: 33,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: greyF2F2F2),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(0.0),
                                          child: IconButton(
                                            onPressed: () {
                                              homeController
                                                  .updateRestaurantLike();
                                            },
                                            icon: homeController
                                                    .likedRestaurant.value
                                                ? const Icon(
                                                    Icons.favorite,
                                                    color: redE2211C,
                                                    size: 18,
                                                  )
                                                : const Icon(
                                                    Icons.favorite,
                                                    color: greyCACACA,
                                                    size: 18,
                                                  ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  11.0, 5, 11.0, 11.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CommonText(
                                    text: "Rose’s Dine in & Blues",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    color: black000000,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  CommonText(
                                    text: "2 miles away",
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15,
                                    color: grey868686,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                });
          })
        ],
      ),
    );
  }
}
