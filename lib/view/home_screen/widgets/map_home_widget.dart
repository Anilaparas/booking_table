import 'package:booking_table/utils/common/common_strings.dart';
import 'package:flutter/material.dart';

class MapHomeScreen extends StatelessWidget {
  const MapHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 628,
      child: Image.asset(mapImage),
    );
  }
}
