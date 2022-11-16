import 'package:booking_table/controller/authentication/login_controller.dart';
import 'package:booking_table/controller/authentication/register_controller.dart';
import 'package:booking_table/view/auth_screens/widgets/sign_in_bottom_view.dart';
import 'package:booking_table/view/auth_screens/widgets/sign_in_top_view.dart';
import 'package:flutter/material.dart';

class SignInBody extends StatelessWidget {
  LoginController loginController;
  RegisterController registerController;
  SignInBody({
    Key? key,
    required this.callFrom,
    required this.loginController,
    required this.registerController,
  }) : super(key: key);

  final String? callFrom;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // TOP VIEW
        const SignInScreenTopView(),
        const SizedBox(height: 35),
        // BOTTOM VIEW
        SignInScreenBottomView(
          loginController: loginController,
          registerController: registerController,
          callFrom: callFrom,
        ),
      ],
    );
  }
}
