import 'package:booking_table/utils/common/common_strings.dart';
import 'package:flutter/material.dart';

import '../../../utils/common/widgets_methods/common_text.dart';

class MenuTab extends StatelessWidget {
  const MenuTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ListView(
            primary: false,
            controller: ScrollController(keepScrollOffset: false),
            shrinkWrap: true,
            children: [
              //Recommended starts from here
              CommonText(
                text: "Recommended",
                fontWeight: FontWeight.w700,
                fontSize: 15,
                color: black000000,
              ),
              const SizedBox(
                height: 12,
              ),
              ListView.builder(
                itemCount: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return restaurantItem(context);
                },
              ),
              const SizedBox(
                height: 30,
              ),

              //Main course starts from here
              CommonText(
                text: "Main Course",
                fontWeight: FontWeight.w700,
                fontSize: 15,
                color: black000000,
              ),
              const SizedBox(
                height: 12,
              ),
              ListView.builder(
                itemCount: 6,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return restaurantItem(context);
                },
              ),

              //sweets starts from here
              CommonText(
                text: "Sweets",
                fontWeight: FontWeight.w700,
                fontSize: 15,
                color: black000000,
              ),
              const SizedBox(
                height: 12,
              ),
              ListView.builder(
                itemCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return restaurantItem(context);
                },
              ),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      ],
    );
  }

  restaurantItem(context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 73,
              height: 75,
              child: Image.asset(
                "assets/images/home/restaurant_item.png",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonText(
                  text: "Spicy Crunchy Chicken",
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: black000000,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 130,
                  child: CommonText(
                    text:
                        "Creamy Hot Tomato Sauce, Jalapeno with Mozzarella Cheese",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: textDark3F3E3E,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CommonText(
                      text: "Price: ",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: textDark3F3E3E,
                    ),
                    CommonText(
                      text: "\$ 45.98 ",
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: redE2211C,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
