import 'package:booking_table/view/payment/widgets/payment_done_body.dart';
import 'package:flutter/material.dart';

class PaymentDoneView extends StatelessWidget {
  const PaymentDoneView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PaymentDoneBody(),
    );
  }
}
