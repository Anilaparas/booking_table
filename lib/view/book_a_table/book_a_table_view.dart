// ignore_for_file: must_be_immutable

import 'package:booking_table/utils/common/widgets_methods/common_app_bar.dart';
import 'package:booking_table/view/book_a_table/widget/book_a_table_body.dart';
import 'package:flutter/material.dart';

class BookATableView extends StatelessWidget {
  String callFrom;
  BookATableView({Key? key, required this.callFrom}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarCommon(text: 'Book a Table'),
      body: BookATableBody(),
    );
  }
}
