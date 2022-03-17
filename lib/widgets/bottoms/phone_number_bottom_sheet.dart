import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class PhoneNumberBottomSheet extends StatelessWidget {
  const PhoneNumberBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getUniqueH(280.0),
      decoration: MyDecoration.circular(color: MyColors.white, radius: 28.0),
      child: Column(
        children: [
          const MyBottomSheetHolder(),
          MySizedBox(height: 20.0),
          MyTextRegular(text: AppStrings.phone, size: 18.0),
          MySizedBox(height: 10.0),
          MyTextBold(text: '+998 93 123-45-67', size: 20),
          MySizedBox(height: 30.0),
          _setButton(MyButton(onPressed: () {}, label: AppStrings.toPhone)),
          MySizedBox(height: 15.0),
          _setButton(
            MyOutlinedButtonText(
              onPressed: () {},
              label: AppStrings.sendSMS,
              paddingVertical: 18.0,
              color: MyColors.primary,
            ),
          ),
        ],
      ),
    );
  }

  MySizedBox _setButton(Widget child) => MySizedBox(
        child: child,
        height: 52.0,
        width: 320.0,
      );
}
