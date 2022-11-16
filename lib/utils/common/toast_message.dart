import 'package:booking_table/utils/common/common_strings.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ShowToast {
  static void show(
      {String? msg,
      bool isError = false,
      Toast toastLength = Toast.LENGTH_LONG}) {
    Fluttertoast.showToast(
        msg: msg!,
        toastLength: toastLength,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: isError ? redE2211C : Colors.green,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
