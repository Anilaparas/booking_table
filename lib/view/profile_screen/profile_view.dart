import 'package:booking_table/utils/common/common_strings.dart';

import 'package:booking_table/utils/common/widgets_methods/common_app_bar.dart';
import 'package:booking_table/view/profile_screen/widgets/profile_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/profile/profile_controller.dart';

class ProfileView extends StatelessWidget {
  String callFrom;
  ProfileView({Key? key, required this.callFrom}) : super(key: key);
  final ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: appBarCommon(
        text: callFrom == "Create Profile" ? "Create Profile" : "Edit Details",
      ),
      body: EditProfileScreenBody(
          callFrom: callFrom, profileController: profileController),
    );
  }
}
