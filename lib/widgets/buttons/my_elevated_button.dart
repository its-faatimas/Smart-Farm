import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

// Elevated Button
class MyButton extends StatelessWidget {
  VoidCallback onPressed;
  String label;
  Color color;

  MyButton(
      {Key? key,
      required this.onPressed,
      required this.label,
      this.color = MyColors.primary})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: getUniqueW(16.0),
        ),
      ),
      style: ElevatedButton.styleFrom(
          // primary: color,
          elevation: 0.0,
          shape: MyShape.circular(radius: 10),
          padding: MyEdgeInsets.symmetric(h: 40.0, v: 18.0)),
    );
  }
}
