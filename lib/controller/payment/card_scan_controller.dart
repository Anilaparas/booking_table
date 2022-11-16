import 'package:credit_card_scanner/credit_card_scanner.dart';
import 'package:get/get.dart';

class CardScanController extends GetxController {
  CardScanOptions scanOptions = const CardScanOptions(
    scanCardHolderName: true,
    //  enableDebugLogs: true,
    // validCardsToScanBeforeFinishingScan: 5,
    possibleCardHolderNamePositions: [
      CardHolderNameScanPosition.belowCardNumber,
    ],
  );

  scanCardDetails() async {
    // if (!mounted || cardDetails == null) return;
    // setState(() {
    //   _cardDetails = cardDetails;
    // });
  }
}
