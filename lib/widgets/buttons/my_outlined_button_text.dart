import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class MyOutlinedButtonText extends StatelessWidget {
  VoidCallback onPressed;
  String label;
  Color color;
  double paddingVertical;

  MyOutlinedButtonText({
    Key? key,
    required this.onPressed,
    required this.label,
    this.color = Colors.grey,
    this.paddingVertical = 7.0
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: MyTextBold(text: label, color: color),
      style: OutlinedButton.styleFrom(
        enableFeedback: false,
        primary: color,
        alignment: Alignment.center,
        shape: MyShape.circular(radius: 7.0),
        side: BorderSide(color: color),
        padding: MyEdgeInsets.symmetric(h: 21.0, v: paddingVertical),
      ),
    );
  }
}
