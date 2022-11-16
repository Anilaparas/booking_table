import 'package:booking_table/utils/common/widgets_methods/common_sized_box.dart';
import 'package:booking_table/utils/common/widgets_methods/common_text.dart';
import 'package:flutter/material.dart';

class TermsNConditionBody extends StatelessWidget {
  const TermsNConditionBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CommonText(
              text: 'Terms & Conditions',
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
            CommonSizedBox(
              height: 20,
            ),
            CommonText(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pretium, dui sed pharetra congue, leo ipsum tincidunt nulla, a posuere lectus nulla lobortis metus. Mauris non efficitur ipsum. Phasellus et sollicitudin sapien. Donec malesuada est nisi, eget viverra mauris pulvinar commodo.',
            ),
            CommonSizedBox(
              height: 20,
            ),
            CommonText(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pretium, dui sed pharetra congue, leo ipsum tincidunt nulla, a posuere lectus nulla lobortis metus. Mauris non efficitur ipsum. Phasellus et sollicitudin sapien. Donec malesuada est nisi, eget viverra mauris pulvinar commodo.',
            ),
            CommonSizedBox(
              height: 20,
            ),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.circle,
                  size: 10,
                  color: Colors.yellow,
                ),
                CommonSizedBox(
                  width: 12,
                ),
                Expanded(
                  child: CommonText(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    text:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pretium, dui.',
                  ),
                ),
              ],
            ),
            CommonSizedBox(
              height: 20,
            ),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.circle,
                  size: 10,
                  color: Colors.yellow,
                ),
                CommonSizedBox(
                  width: 12,
                ),
                Expanded(
                  child: CommonText(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    text:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pretium, dui.',
                  ),
                ),
              ],
            ),
            CommonSizedBox(
              height: 20,
            ),
            CommonText(
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pretium, dui sed pharetra congue, leo ipsum tincidunt nulla, a posuere lectus nulla lobortis metus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pretium, dui sed pharetra congue, leo ipsum tincidunt nulla, a posuere lectus nulla lobortis metus. Mauris non efficitur ipsum. Phasellus et sollicitudin sapien. Donec malesuada est nisi, eget viverra mauris pulvinar commodo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pretium.',
              fontSize: 16,
              fontWeight: FontWeight.w400,
            )
          ],
        ),
      ),
    );
  }
}
