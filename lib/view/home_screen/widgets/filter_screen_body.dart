// // ignore_for_file: must_be_immutable
//
// import 'package:booking_table/controller/home/home_controller.dart';
// import 'package:booking_table/utils/common/common_strings.dart';
// import 'package:booking_table/utils/common/widgets_methods/common_button.dart';
// import 'package:booking_table/utils/common/widgets_methods/common_date_picker_widget.dart';
// import 'package:booking_table/utils/common/widgets_methods/common_dropdown_widget.dart';
// import 'package:booking_table/utils/common/widgets_methods/common_info_icon.dart';
// import 'package:booking_table/utils/common/widgets_methods/common_text.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class FilterScreenBody extends StatelessWidget {
//   final dateController = TextEditingController();
//   HomeController homeController = Get.put(HomeController());
//
//   FilterScreenBody({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Padding(
//         padding: const EdgeInsets.all(22.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Stack(
//             //   children: [
//             //     const AppBarBackButton(),
//             //     Center(
//             //       child: CommonText(
//             //         text: "Filter",
//             //         fontSize: 22,
//             //         fontWeight: FontWeight.w600,
//             //         color: black000000,
//             //       ),
//             //     ),
//             //   ],
//             // ),
//             // const SizedBox(
//             //   height: 35,
//             // ),
//             CommonText(
//               text: "Date",
//               fontSize: 18,
//               fontWeight: FontWeight.w600,
//               color: black000000,
//               textAlign: TextAlign.start,
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             // const CommonDropDown(
//             //   hintText: "",
//             // ),
//             CommonDatePicker(
//               controller: dateController,
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Image.asset(lineImage),
//             const SizedBox(
//               height: 20,
//             ),
//             CommonText(
//               text: "Time",
//               fontSize: 18,
//               fontWeight: FontWeight.w600,
//               color: black000000,
//               textAlign: TextAlign.start,
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             const CommonDropDown(
//               hintText: "Select Time",
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Image.asset(lineImage),
//             const SizedBox(
//               height: 20,
//             ),
//             CommonText(
//               text: "Party Size",
//               fontSize: 18,
//               fontWeight: FontWeight.w600,
//               color: black000000,
//               textAlign: TextAlign.start,
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             const CommonDropDown(
//               hintText: "None",
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Image.asset(lineImage),
//             const SizedBox(
//               height: 20,
//             ),
//             CommonText(
//               text: "Type of Service",
//               fontSize: 18,
//               fontWeight: FontWeight.w600,
//               color: black000000,
//               textAlign: TextAlign.start,
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Obx(
//               () => Row(
//                 children: [
//                   typeServiceContainer(
//                       "Full",
//                       // ignore: unrelated_type_equality_checks
//                       homeController.serviceType.value == "Full"),
//                   const SizedBox(
//                     width: 10,
//                   ),
//                   // ignore: unrelated_type_equality_checks
//                   typeServiceContainer(
//                       "Mid", homeController.serviceType.value == "Mid"),
//                   const SizedBox(
//                     width: 10,
//                   ),
//                   // ignore: unrelated_type_equality_checks
//                   typeServiceContainer(
//                       "No", homeController.serviceType.value == "No"),
//                   const SizedBox(
//                     width: 10,
//                   ),
//                   // ignore: unrelated_type_equality_checks
//                   typeServiceContainer(
//                       "To Go", homeController.serviceType.value == "To Go"),
//                 ],
//               ),
//             ),
//             const SizedBox(
//               height: 15,
//             ),
//             Row(
//               children: [
//                 const InfoIcon(),
//                 const SizedBox(
//                   width: 10,
//                 ),
//                 CommonText(
//                   text: "Traditional order when seated with a server",
//                   fontWeight: FontWeight.w400,
//                   fontSize: 14,
//                   color: textGrey868686,
//                 )
//               ],
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Image.asset(lineImage),
//             const SizedBox(
//               height: 20,
//             ),
//             Row(
//               children: [
//                 CommonText(
//                   text: "Type of Food ",
//                   fontSize: 18,
//                   fontWeight: FontWeight.w600,
//                   color: black000000,
//                   textAlign: TextAlign.start,
//                 ),
//                 CommonText(
//                   text: "(optional) ",
//                   fontSize: 14,
//                   fontWeight: FontWeight.w400,
//                   color: textDark3F3E3E,
//                   textAlign: TextAlign.start,
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             const CommonDropDown(
//               hintText: "Select Type",
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             CommonButton(
//               onTap: () {
//                 Get.toNamed('/filter-result-screen');
//               },
//               text: "Apply",
//               bgColor: redE2211C,
//               textColor: white,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   typeServiceContainer(text, isSelected) {
//     return Expanded(
//       child: InkWell(
//         onTap: () {
//           homeController.serviceType.value = text;
//           // isSelected = !isSelected;
//         },
//         child: Container(
//           width: 75,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(6),
//               color: isSelected ? black0D0000 : greyF8F8F8),
//           child: Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Center(
//               child: CommonText(
//                 text: text,
//                 fontWeight: FontWeight.w400,
//                 fontSize: 14,
//                 color: isSelected ? white : greyA2A2A2,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
