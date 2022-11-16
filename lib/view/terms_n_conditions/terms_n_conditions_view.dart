import 'package:booking_table/utils/common/widgets_methods/common_app_bar.dart';
import 'package:booking_table/view/terms_n_conditions/widgets/terms_n_conditions_body.dart';
import 'package:flutter/material.dart';

class TermsNConditionsView extends StatelessWidget {
  const TermsNConditionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarCommon(),
      body: const TermsNConditionBody(),
    );
  }
}
