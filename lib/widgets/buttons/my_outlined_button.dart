import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class MyOutlinedButton extends StatelessWidget {
  VoidCallback onPressed;
  Widget child;
  double vPadding;
  double hPadding;
  Size? minimumSize;
  Size? maximumSize;
  Size? fixedSize;
  Alignment? alignment;
  MyOutlinedButton({
    required this.onPressed,
    required this.child,
    required this.vPadding,
    required this.hPadding,
    this.fixedSize,
    this.maximumSize,
    this.minimumSize,
    this.alignment,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: child,
      style: OutlinedButton.styleFrom(
        alignment: alignment,
        minimumSize: minimumSize,
        maximumSize: maximumSize,
        fixedSize:  fixedSize,
        padding: MyEdgeInsets.symmetric(v: vPadding, h: hPadding),
      ),
    );
  }
}
