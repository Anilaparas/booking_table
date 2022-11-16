// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CommonSizedBox extends StatelessWidget {
  double? height;
  double? width;
  Widget? child;
  CommonSizedBox({this.child, this.height, this.width, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: child,
    );
  }
}
