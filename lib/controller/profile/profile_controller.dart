import 'dart:io';

import 'package:get/get.dart';

import '../../utils/common/common_strings.dart';
import '../../utils/common/toast_message.dart';
import '../../utils/network/api_calls.dart';

class ProfileController extends GetxController {
  static final ProfileController profileController =
  ProfileController._internal();

  factory ProfileController() {
    return profileController;
  }

  ProfileController._internal();

  var countryCode = '1'.obs;

  //var countryCode = 'USA'.obs;
  var countryFlag = '🇺🇸'.obs;

  ApiCalls apiCall = ApiCalls();
  var createProfileImage = File('').obs;
  Future<bool> createProfile(
      {
        // Map<String, dynamic>? body,
        String? endPoint,
        File? imageFile,
        String? filename}) async {
    try {
      final response = await apiCall.callPostApiWithFile(endPoint!,
        filename: filename, imageFile: imageFile,
       token:"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCIsImN0eSI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoiMTkiLCJleHAiOjE2NjgyMzY1NDgsImlzcyI6IlRlc3QuY29tIiwiYXVkIjoiVGVzdC5jb20ifQ.DYj0RL9IuBoGo9W5lljJLo0p18e2C7AWPqnhq936J8Q"
      );
      print('Response --------> ${response!}');
      if (response['response'] == 1) {
        ShowToast.show(
          msg: response['message']
        );
        return true;
      } else {
        ShowToast.show(
          msg: response['message'] ?? 'Please try again!',
          isError: true,
        );
      }
    } catch (e) {
      return false;
    }
    return false;
  }
}
