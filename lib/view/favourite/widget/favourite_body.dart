import 'package:booking_table/controller/home/home_controller.dart';
import 'package:booking_table/utils/common/common_strings.dart';
import 'package:booking_table/utils/common/widgets_methods/common_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavouriteBody extends StatelessWidget {
  const FavouriteBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
            itemCount: 35,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                // Button
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
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.06),
                            blurRadius: 4.0,
                            offset: Offset(0.0, 10),
                          ),
                        ]),
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
                                          controller.updateRestaurantLike();
                                        },
                                        icon: controller.likedRestaurant.value
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
                        // BODY PART
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(11.0, 5, 11.0, 11.0),
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
              // return Padding(
              //   padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 15),
              //   child: Container(
              //     padding: const EdgeInsets.only(
              //       left: 11,
              //       right: 11,
              //     ),
              //     // color: whiteE5E5E5,
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: <Widget>[
              //         CommonSizedBox(
              //           height: 20,
              //         ),
              //         Stack(
              //           children: [
              //             Container(
              //               height: 133,
              //               width: Get.width,
              //               decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(15),
              //                 image: const DecorationImage(
              //                   image: AssetImage(
              //                     bookATableImage,
              //                   ),
              //                   fit: BoxFit.cover,
              //                 ),
              //               ),
              //             ),
              //             Positioned(
              //               width: 33,
              //               height: 33,
              //               right: 30,
              //               bottom: 00,
              //               child: Container(
              //                 height: 33,
              //                 width: 33,
              //                 padding: const EdgeInsets.all(6),
              //                 decoration: BoxDecoration(
              //                   color: Colors.white,
              //                   borderRadius: BorderRadius.circular(50),
              //                   // image: DecorationImage(
              //                   //   image: AssetImage(heartLogo),
              //                   //   fit: BoxFit.fill,
              //                   // ),
              //                 ),
              //                 child: Image.asset(
              //                   heartLogo,
              //                   height: 19,
              //                   width: 17,
              //                 ),
              //               ),
              //             )
              //           ],
              //         ),
              //         CommonSizedBox(
              //           height: 15,
              //         ),
              //         CommonText(
              //           text: 'Denies Jazz House',
              //           fontSize: 20,
              //           fontWeight: FontWeight.w600,
              //         ),
              //         CommonSizedBox(
              //           height: 5,
              //         ),
              //         CommonText(
              //           text: '1 miles away',
              //           fontSize: 15,
              //           fontWeight: FontWeight.w400,
              //         ),
              //         CommonSizedBox(
              //           height: 15,
              //         ),
              //       ],
              //     ),
              //   ),
              // );
            }),
      );
    });
  }
}
