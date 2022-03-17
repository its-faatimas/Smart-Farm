import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class FarmContactBottomSheet extends StatelessWidget {
  const FarmContactBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getUniqueH(345.0),
      decoration: MyDecoration.circular(color: MyColors.white),
      child: Column(
        children: [
          const MyBottomSheetHolder(),
          MySizedBox(height: 32.0),
          MyTextBold(text: 'Ina Ferma', size: 24.0),
          MySizedBox(height: 20.0),
          const MyDivider(),
          Padding(
            padding: MyEdgeInsets.symmetric(h: 20.0, v: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _setContactInfo('Telefon raqami', '+998 97 123-45-67'),
                _setContactInfo('Manzil', 'Toshtent tumani...'),
                _setContactInfo('Izoh', AppStrings.forTwoMonths,
                    hasDivider: false,),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column _setContactInfo(
    String title,
    String data, {
    bool hasDivider = true,
  }) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyTextRegular(text: title, size: 18.0),
          MySizedBox(height: 5.0),
          MyTextRegular(text: data, size: 16.0, color: MyColors.grey),
          MySizedBox(height: 15.0),
          hasDivider ? const MyDivider() : MySizedBox(),
          MySizedBox(height: 15.0),
        ],
      );
}
