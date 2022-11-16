import 'package:booking_table/utils/common/common_strings.dart';
import 'package:booking_table/utils/common/widgets_methods/common_text_form_field.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class PhoneField extends StatefulWidget {
  final String? countryCode;
  final String? countryFlag;
  final TextEditingController? phoneController;
  final Function(String)? onCodeChange;
  final Function(String)? onCountryFlag;
  final Color? textFieldColor;

  const PhoneField({
    Key? key,
    this.phoneController,
    this.onCodeChange,
    this.countryCode,
    this.onCountryFlag,
    this.countryFlag,
    this.textFieldColor,
  }) : super(key: key);

  @override
  State<PhoneField> createState() => _PhoneFieldState();
}

class _PhoneFieldState extends State<PhoneField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      //margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: widget.textFieldColor,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              // ///TODO: store code
              showCountryPicker(
                context: context,
                showPhoneCode: true,
                onSelect: (Country country) {
                  // authenticationController.countryCode.value =
                  //     country.phoneCode;
                  widget.onCodeChange!(country.phoneCode);
                  widget.onCountryFlag!(country.flagEmoji);
                },
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 10.0),
              child: SizedBox(
                //  color: Colors.grey,
                // width: 100,
                child: Center(
                  child: Text(
                    '${widget.countryFlag}+${widget.countryCode}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: black000000,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              right: 15,
            ),
            width: 1,
            color: textLight868686,
            height: 34,
          ),
          Expanded(
            child: CommonTextFormField(
              // inputFormatters: [
              //   LengthLimitingTextInputFormatter(10),
              // ],
              keyboardType: TextInputType.number,
              controller: widget.phoneController,
              hintText: '+1 7700 900175',
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
