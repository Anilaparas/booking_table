import 'package:booking_table/utils/common/widgets_methods/common_app_bar.dart';
import 'package:booking_table/view/payment/widgets/add_card_details_body.dart';
import 'package:flutter/material.dart';

class AddCreditCardDetailsView extends StatelessWidget {
  const AddCreditCardDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarCommon(
        text: 'Credit Card',
      ),
      body: const AddCardDetailsBody(),
    );
  }
}
