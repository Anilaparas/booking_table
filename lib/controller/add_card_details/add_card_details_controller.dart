import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AddCardDetailsController extends GetxController {
  var selectedCardDate = DateTime.now().obs;
  var cardExpiryDate = TextEditingController();

  // Select Date
  selectDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: Get.context!,
      initialDatePickerMode: DatePickerMode.year,
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      initialDate: selectedCardDate.value,
      firstDate: DateTime.now(),
      lastDate: DateTime(3000),
    );
    if (pickedDate != null && pickedDate != selectedCardDate.value) {
      selectedCardDate.value = pickedDate;
      cardExpiryDate.text =
          DateFormat('M-yy').format(selectedCardDate.value).toString();
    } else if (cardExpiryDate.text.isEmpty) {
      cardExpiryDate.text =
          DateFormat('M-yy').format(DateTime.now()).toString();
    }
  }
}
