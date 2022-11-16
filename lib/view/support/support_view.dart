import 'package:booking_table/utils/common/common_strings.dart';

import 'package:booking_table/utils/common/widgets_methods/common_app_bar.dart';
import 'package:booking_table/view/support/widgets/support_body.dart';
import 'package:flutter/material.dart';

class SupportView extends StatelessWidget {
  const SupportView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: appBarCommon(
        text: 'Support',
      ),
      body: const SingleChildScrollView(
        child: SupportBody(),
      ),
    );
  }
}
