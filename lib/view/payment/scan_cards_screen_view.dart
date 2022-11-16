// import 'package:booking_table/view/payment/widgets/card_scanner_demo.dart';
// import 'package:credit_card_scanner/credit_card_scanner.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class ScanCardScreen extends StatefulWidget {
//   const ScanCardScreen({Key? key}) : super(key: key);
//
//   @override
//   State<ScanCardScreen> createState() => _ScanCardScreenState();
// }
//
// class _ScanCardScreenState extends State<ScanCardScreen> {
//   CardDetails? _cardDetails;
//   CardScanOptions scanOptions = const CardScanOptions(
//     scanCardHolderName: true,
//   //  enableDebugLogs: true,
//    // validCardsToScanBeforeFinishingScan: 5,
//     possibleCardHolderNamePositions: [
//       CardHolderNameScanPosition.belowCardNumber,
//     ],
//   );
//
//   scanCard() async {
//     final CardDetails? cardDetails =
//         await CardScanner.scanCard(scanOptions: scanOptions);
//     if (!mounted || cardDetails == null) return;
//     setState(() {
//       _cardDetails = cardDetails;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('card_scanner app'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             InkWell(
//               onTap: () async {
//                 scanCard();
//               },
//               child: Text('scan card'),
//             ),
//             Text('$_cardDetails'),
//             Expanded(
//               child: OptionConfigureWidget(
//                 initialOptions: scanOptions,
//                 onScanOptionChanged: (newOptions) => scanOptions = newOptions,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
