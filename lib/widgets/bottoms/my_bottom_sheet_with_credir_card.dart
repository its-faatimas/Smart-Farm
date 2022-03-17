import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class MyBottomSheetWithCreditCard extends StatelessWidget {
  MyBottomSheetWithCreditCard({Key? key}) : super(key: key);
  int _count = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getUniqueH(386.0),
      padding: MyEdgeInsets.symmetric(h: 20.0),
      decoration: MyDecoration.circular(color: MyColors.white),
      child: Column(
        children: [
          const MyBottomSheetHolder(),
          const MyCreditCard(),
          MySizedBox(height: 30.0),
          _showAnimalPrice(),
          MySizedBox(height: 15.0),
          _addCount(),
          MySizedBox(height: 20.0),
          SizedBox(
            width: getUniqueW(320.0),
            child: MyButton(onPressed: () {}, label: 'Sotib olish'),
          ),
        ],
      ),
    );
  }

  StatefulBuilder _addCount() {
    return StatefulBuilder(builder: (context, state) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _setIncrementButton('-', state),
          _setIncrementCount(),
          _setIncrementButton('+', state),
        ],
      );
    });
  }

  MySizedBox _setIncrementButton(String label, StateSetter state) => MySizedBox(
        height: 50.0,
        width: 70.0,
        child: MyOutlinedButtonText(
          onPressed: () {
            _onPressed(state);
          },
          label: label,
        ),
      );

  void _onPressed(StateSetter state) {
    state.call(() {
      _count++;
    });
  }

  Container _setIncrementCount() => Container(
        height: getUniqueH(50.0),
        width: getUniqueW(160.0),
        alignment: Alignment.center,
        child: MyTextBold(text: '$_count', size: 20.0),
        decoration: MyDecoration.circular(
          radius: 8.0,
          border: Border.all(color: MyColors.grey),
        ),
      );

  Row _showAnimalPrice() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _setBoldText('Sof zotli toy'),
        _setBoldText('2 000 000'),
      ],
    );
  }

  MyTextBold _setBoldText(String text) => MyTextBold(text: text, size: 20.0);
}
