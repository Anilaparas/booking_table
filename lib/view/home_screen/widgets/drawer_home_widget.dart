import 'package:booking_table/utils/common/common_strings.dart';
import 'package:booking_table/utils/common/widgets_methods/common_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/home/home_controller.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find();
    return Drawer(
      backgroundColor: white,
      child: Stack(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Positioned(
            top: 10,
            right: -6,
            child: IconButton(
              onPressed: () {
                homeController.drawerKey.currentState!.closeDrawer();
              },
              icon: const Icon(
                Icons.close,
                size: 25,
                color: black000000,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      width: 68,
                      height: 68,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(profileImage),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonText(
                          text: "Chaire Fiona",
                          fontFamily: proximaNovaFont,
                          fontWeight: FontWeight.w600,
                          color: black000000,
                          fontSize: 16,
                        ),
                        CommonText(
                          text: "chaire_fione@gmail.com",
                          fontFamily: proximaNovaFont,
                          fontWeight: FontWeight.w400,
                          color: black000000,
                          fontSize: 14,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Get.toNamed('/edit-profile');
                          },
                          child: CommonText(
                            text: "Edit Profile",
                            fontFamily: proximaNovaFont,
                            fontWeight: FontWeight.w400,
                            color: redE2211C,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 28,
                ),
                Image.asset(
                  lineImage,
                ),
                const SizedBox(
                  height: 13,
                ),
                iconContainer(
                    const Icon(
                      Icons.home,
                      color: redE2211C,
                    ),
                    "Home", () {
                  Get.toNamed('/home');
                  print('Home Button Clicked');
                  homeController.drawerKey.currentState!.closeDrawer();
                }),
                iconContainer(
                    const Icon(
                      Icons.favorite,
                      color: redE2211C,
                    ),
                    "Favorites", () {
                  Get.toNamed('/favourite');
                }),
                iconContainer(
                    const Icon(
                      Icons.book,
                      color: redE2211C,
                    ),
                    "Reservations", () {
                  Get.toNamed('/reservation');
                }),
                iconContainer(
                    const Icon(
                      Icons.wallet,
                      color: redE2211C,
                    ),
                    "Payment Methods", () {
                  Get.toNamed('/payment-method');
                }),
                iconContainer(
                    const Icon(
                      Icons.notifications,
                      color: redE2211C,
                    ),
                    "Notifications", () {
                  Get.toNamed('/notifications');
                }),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(lineImage),
                const SizedBox(
                  height: 30,
                ),
                textAndIcon("Terms & Conditions", () {
                  Get.toNamed('/terms-and-conditions');
                }),
                textAndIcon("Legal & About", () {
                  Get.toNamed('/privacy-policy');
                }),
                textAndIcon("Customer Support", () {
                  Get.toNamed('/support');
                }),
                textAndIcon("Logout", () {
                  Get.toNamed('/authentication');
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }

  iconContainer(icon, text, onTap) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          InkWell(
            onTap: onTap,
            child: Row(
              children: [
                Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: greyF5F5F5),
                  child: icon,
                ),
                const SizedBox(
                  width: 12,
                ),
                CommonText(
                  text: text,
                  fontWeight: FontWeight.w400,
                  fontFamily: proximaNovaFont,
                  fontSize: 16,
                ),
                const Spacer(),
                // Image.asset(
                //   forwardArrowImage,
                //   width: 4,
                //   height: 9,
                // )
                const Icon(
                  Icons.chevron_right,
                  size: 18,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  textAndIcon(text, onTap) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          InkWell(
            onTap: onTap,
            child: Row(
              children: [
                CommonText(
                  text: text,
                  fontSize: 16,
                  fontFamily: proximaNovaFont,
                  fontWeight: FontWeight.w400,
                  color: black000000,
                ),
                const Spacer(),
                const Icon(
                  Icons.chevron_right,
                  size: 18,
                ),
                // Image.asset(
                //   forwardArrowImage,
                //   width: 4,
                //   height: 9,
                // )
              ],
            ),
          )
        ],
      ),
    );
  }
}
