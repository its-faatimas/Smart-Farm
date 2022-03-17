import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class MySizedBox extends StatelessWidget {
  double height;
  double width;
  Widget? child;

  MySizedBox({
    Key? key,
    this.width = 0.0,
    this.height = 0.0,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getUniqueH(height),
      width: getUniqueW(width),
      child: child,
    );
  }
}
