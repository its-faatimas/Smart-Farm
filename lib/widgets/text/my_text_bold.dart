import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class MyTextBold extends StatelessWidget {
  final String text;
  double size;
  int? maxLines;
  Color color;
  TextAlign? textAlign;

  MyTextBold({
    required this.text,
    this.textAlign,
    this.color = MyColors.black,
    this.size = 14.0,
    Key? key,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
        fontSize: getUniqueW(size),
        color: color,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
