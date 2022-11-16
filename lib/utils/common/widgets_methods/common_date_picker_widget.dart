import 'package:booking_table/utils/common/common_strings.dart';
import 'package:booking_table/utils/common/widgets_methods/common_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CommonDatePicker extends StatelessWidget {
  final TextEditingController? controller;
  final Color? fillColor;

  const CommonDatePicker({Key? key, this.controller, this.fillColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 45,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: fillColor,
      ),
      child: CommonTextFormField(
          controller: controller,
          hintText: "DD-MM-YY",
          filled: true,
          readOnly:true,
          suffixIcon: IconButton(
            onPressed: () async {
              DateTime? picked = await showDatePicker(
                  builder: (context, child) {
                    return Theme(
                      data: Theme.of(context).copyWith(
                        colorScheme: const ColorScheme.light(
                          primary: redE2211C, // <-- SEE HERE
                        ),
                      ),
                      child: child!,
                    );
                  },
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now());
              if (picked != null) {
                controller!.text = DateFormat('dd-MM-yyyy').format(picked);
              }
            },
            icon: const Icon(
              Icons.calendar_month_outlined,
              color: redE2211C,
              size: 22,
            ),
          )),
    );
  }
}
