// import 'package:flutter/material.dart';
//
// import '../common_colors.dart';
// class CommonTextField extends StatefulWidget {
//   final TextEditingController? controller;
//   final String? hint;
//   // final bool? isPassword;
//   final TextInputType? inputType;
//   // final bool? isContainer;
//   // final double? horizontalMargin;
//   const CommonTextField(
//       {Key? key,
//         this.controller,
//         this.hint,
//         // this.isPassword = false,
//         // this.isContainer = false,
//         // this.horizontalMargin = 28,
//         this.inputType = TextInputType.text})
//       : super(key: key);
//
//   @override
//   State<CommonTextField> createState() => _CommonTextFieldState();
// }
//
// class _CommonTextFieldState extends State<CommonTextField> {
//   // bool isShow = true;
//   //
//   // @override
//   // void initState() {
//   //   isShow = widget.isPassword!;
//   //   super.initState();
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(
//           vertical: 5),
//       padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
//       height:46,
//       width: MediaQuery.of(context).size.width,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: greyF4F4F4,
//       ),
//       child: TextFormField(
//         keyboardType: widget.inputType,
//         // obscureText: isShow,
//         // maxLines: widget.isContainer! ? 6 : 1,
//         controller: widget.controller,
//         style: const TextStyle(
//           fontSize: 14,
//           fontWeight: FontWeight.w400,
//           color: black000000,
//         ),
//         decoration: InputDecoration(
//           border: InputBorder.none,
//           hintText: widget.hint,
//           hintStyle: const TextStyle(
//             fontSize: 18,
//             fontWeight: FontWeight.w400,
//             color: textGrey868686,
//           ),
//           // suffixIconConstraints: BoxConstraints(
//           //     maxWidth:
//           //     widget.isPassword! ? double.infinity : double.minPositive),
//           // suffixIcon: widget.isPassword!
//           //     ? InkWell(
//           //   onTap: () {
//           //     setState(() {
//           //       isShow = !isShow;
//           //     });
//           //   },
//           //   child: Icon(
//           //     !isShow
//           //         ? Icons.visibility_outlined
//           //         : Icons.visibility_off_outlined,
//           //     color: grey9B9B9B,
//           //   ),
//           // )
//           //     : const SizedBox(
//           //   width: 0,
//           // ),
//         ),
//       ),
//     );
//   }
// }
