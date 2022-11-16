import 'package:booking_table/utils/common/common_strings.dart';
import 'package:flutter/material.dart';

class InfoIcon extends StatelessWidget {
  const InfoIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 13,
      height: 13,
      decoration: const BoxDecoration(shape: BoxShape.circle, color: redE2211C),
      child: Image.asset(infoIcon),
    );
  }
}
