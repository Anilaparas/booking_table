import 'package:booking_table/utils/common/common_strings.dart';
import 'package:flutter/material.dart';

class CommonDropDown extends StatelessWidget {
  final List<String>? itemList;
  final String? value;
  final String? hintText;
  // final dynamic icon;
  final dynamic color;
  final Function(String)? onChange;

  const CommonDropDown(
      {Key? key,
      this.itemList,
      this.value,
      this.hintText,
      // this.icon,
      this.color,
      this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 45,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: greyB3F5F5F5),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButton<String>(
          isExpanded: true,
          dropdownColor: white,
          focusColor: white,
          hint: Text(
            hintText!,
            style: const TextStyle(
              color: textLight868686,

              // fontSize: 14,
              // fontWeight: FontWeight.w400,
            ),
          ),
          value: value,
          // icon: icon ??
          //     SvgPicture.asset(
          //       'assets/images/profile/ic_down_arrow.svg',
          //       height: 6,
          //       width: 11,
          //     ),
          icon: const Icon(
            Icons.arrow_drop_down,
            color: black000000,
            size: 25,
          ),
          // style: const TextStyle(color: blackText282828),
          underline: Container(
            height: 0,
          ),
          borderRadius: BorderRadius.circular(5),
          onChanged: (newValue) {
            if (onChange != null) {
              onChange!(newValue!);
            }
          },
          items: itemList?.map((String selectedValue) {
            return DropdownMenuItem(
              value: selectedValue,
              child: Text(selectedValue),
            );
          }).toList(),
        ),
      ),
    );
  }
}
