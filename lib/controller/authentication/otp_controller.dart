import 'package:booking_table/controller/user_session/user_session_controller.dart';
import 'package:booking_table/model/user_details_model.dart';
import 'package:booking_table/utils/common/common_strings.dart';
import 'package:booking_table/utils/common/toast_message.dart';
import 'package:booking_table/utils/network/api_calls.dart';
import 'package:get/get.dart';

class OtpController extends GetxController {
  var pinOutPut = ''.obs;

  ApiCalls apiCall = ApiCalls();

  UserSessionController userSession = Get.find();
  UserDetailsModel userModel = UserDetailsModel();

  Future<bool> enterOTP({Map<String, dynamic>? data}) async {
    final response = await apiCall.callPostApi(
      data!,
      submitOtp,
      // token: 'token',
    );
    print(data);
    print('OTP Response ======> ${response.body}');
    if (response.body['response'] == 1) {
      ShowToast.show(
        msg: response.body['errorMessage'] ?? 'Please try again!',
      );
      // userModel = UserDetailsModel.fromMap(response);
      userSession.setIsLogin(true);
      print(userSession.isLogin);

      // userSession.setMobileNumber('Test User');
      // userSession.token(userModel.token.toString());
      return true;
    } else {
      ShowToast.show(
        msg: response.body['errorMessage'] ?? 'Please try again!',
        isError: true,
      );
    }
    return false;
  }

  // Future<bool> enterRegisterOTP({Map<String, dynamic>? data}) async {
  //   final response = await apiCall.callPostApi(
  //     data!,
  //     submitOtp,
  //     // token: 'token',
  //   );
  //   print(data);
  //   print('OTP Response ======> ${response.body}');
  //   if (response.body['response'] == 1 &&
  //       response.body['isProfileCreated'] == false) {
  //     userModel = UserDetailsModel.fromMap(response);
  //
  //     print('=====> User Model$userModel');
  //     userSession.setIsLogin(true);
  //     // userSession.mobileNumber(userModel.mobileNumber.toString());
  //     // userSession.token(userModel.token.toString());
  //     return true;
  //   } else if (response.body['response'] == 1 &&
  //       response.body['isProfileCreated'] == true) {
  //     ShowToast.show(
  //         msg: 'user already exists!!!'.toTitleCase(), isError: true);
  //   } else {
  //     ShowToast.show(
  //       msg: response.body['errorMessage'] ?? 'Please try again!',
  //       isError: true,
  //     );
  //   }
  //   return false;
  // }
}
