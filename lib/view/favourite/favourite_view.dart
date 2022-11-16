import 'package:booking_table/utils/common/widgets_methods/common_app_bar.dart';
import 'package:booking_table/view/favourite/widget/favourite_body.dart';
import 'package:flutter/material.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCommon(
        text: 'Favorites',
      ),
      backgroundColor: Colors.white,
      // BODY
      body: const FavouriteBody(),
    );
  }
}
