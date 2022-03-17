import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class MyTextButton extends StatelessWidget {
  VoidCallback onPressed;
  String label;
  Color color;

  MyTextButton({
    Key? key,
    required this.onPressed,
    required this.label,
    this.color = MyColors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(primary: color, padding: EdgeInsets.zero),
      onPressed: onPressed,
      child: MyTextRegular(
        text: label,
        decoration: TextDecoration.underline,
        color: Colors.orange,
      ),
    );
  }
}
