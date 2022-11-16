import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class BookATableController extends GetxController {
  final listOfServices = [
    'Full',
    'Mid',
    'No',
    'ToGo',
  ];
  var selectTypeOfService = 0.obs;
  var serviceType = ''.obs;
  var selectedDate = DateTime.now().obs;
  var bookingDate = TextEditingController();
  var selectedTime = TimeOfDay.now().obs;
  var bookingTime = TextEditingController();
  var partySize = TextEditingController();
  //Select Type Of Service
  void selectService(index) {
    selectTypeOfService.value = index;
    if (kDebugMode) {
      print(selectTypeOfService.value);
    }
  }

  // Select Date
  selectDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: Get.context!,
      initialDate: selectedDate.value,
      firstDate: DateTime(2020),
      lastDate: DateTime(3000),
    );
    if (pickedDate != null && pickedDate != selectedDate.value) {
      selectedDate.value = pickedDate;
      bookingDate.text =
          DateFormat('dd-MM-y').format(selectedDate.value).toString();
    } else if (bookingDate.text.isEmpty) {
      bookingDate.text =
          DateFormat('dd-MM-y').format(DateTime.now()).toString();
    }
  } // Select Date

  selectTime() async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: Get.context!,
      initialTime: selectedTime.value,
      cancelText: 'Close',
      confirmText: 'Confirm',
      errorInvalidText: 'Provide valid time',
      hourLabelText: 'Select Hour',
      minuteLabelText: 'Select Minute',
    );
    if (pickedTime != null && pickedTime != selectedTime.value) {
      selectedTime.value = pickedTime;
      bookingTime.text = selectedTime.value.toString();
      if (kDebugMode) {
        print(bookingTime.text.toString());
      }
    }
    // else if (bookingDate.text.isEmpty) {
    //   bookingDate.text =
    //       DateFormat('dd-MM-y').format(DateTime.now()).toString();
    // }
  }
}
