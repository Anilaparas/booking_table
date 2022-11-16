// ignore_for_file: must_be_immutable

import 'dart:ui';

import 'package:booking_table/utils/common/common_strings.dart';
import 'package:booking_table/utils/common/widgets_methods/common_text.dart';
import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

import '../restaurant_image_zoom_view.dart';

class GalleryTab extends StatelessWidget {
  GalleryTab({Key? key}) : super(key: key);
  List<String> galleryImages = [
    "assets/images/home/restaurants_gallery_first_image.png",
    "assets/images/home/restaurants_gallery_second_image.png",
    "assets/images/home/restaurants_gallery_first_image.png",
    "assets/images/home/restaurants_gallery_second_image.png",
    "assets/images/home/restaurants_gallery_first_image.png",
    "assets/images/home/restaurants_gallery_second_image.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonText(
          text: "All Photos",
          fontWeight: FontWeight.w700,
          color: black000000,
          fontSize: 15,
        ),
        const SizedBox(
          height: 13,
        ),
        Expanded(
          child: StaggeredGridView.countBuilder(
            crossAxisCount: 4,
            shrinkWrap: true,
            mainAxisSpacing: 17,
            crossAxisSpacing: 17,
            //  physics: const NeverScrollableScrollPhysics(),
            itemCount: 6,
            itemBuilder: (context, index) {
              return SizedBox(
                child: InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (_) => BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                          child: AlertDialog(
                            insetPadding: EdgeInsets.zero,
                            backgroundColor: Colors.transparent,
                            content: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: RestaurantImageZoomView(
                                restaurantImage: galleryImages[index],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    child: Image.asset(galleryImages[index])),
              );
            },
            staggeredTileBuilder: (int index) =>
                StaggeredTile.count(2, index.isEven ? 2 : 2.5),
          ),
        )
      ],
    );
  }
}
