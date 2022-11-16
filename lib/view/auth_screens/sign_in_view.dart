// ignore_for_file: must_be_immutable

import 'package:booking_table/controller/authentication/login_controller.dart';
import 'package:booking_table/controller/authentication/register_controller.dart';
import 'package:booking_table/view/auth_screens/widgets/sign_in_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInView extends StatelessWidget {
  String? callFrom;
  LoginController loginController = Get.find();
  RegisterController registerController = Get.find();

  SignInView({required this.callFrom, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // BODY
      body: SignInBody(
        callFrom: callFrom,
        loginController: loginController,
        registerController: registerController,
      ),
    );
  }
}
