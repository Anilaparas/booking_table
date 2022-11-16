import 'package:booking_table/view/home_screen/widgets/filter_result_body.dart';
import 'package:flutter/material.dart';

import '../../utils/common/widgets_methods/common_app_bar.dart';

class FilterResultView extends StatelessWidget {
  const FilterResultView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarCommon(text: "Filter Result"),
      body: const FilterResultBody(),
    );
  }
}
