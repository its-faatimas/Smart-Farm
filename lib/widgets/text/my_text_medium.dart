import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class MyTextMedium extends StatelessWidget {
  String text;
  Color color;
  double size;
  TextAlign align;
  int? maxLines;

  MyTextMedium(
    this.text, {
    this.color = MyColors.black,
    this.size = 14.0,
    this.align = TextAlign.left,
    this.maxLines,
    Key? key, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      maxLines: maxLines,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: getUniqueW(size),
        color: color,
      ),
    );
  }
}
