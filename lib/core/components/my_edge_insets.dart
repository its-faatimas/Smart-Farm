import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class MyEdgeInsets {
  static EdgeInsets symmetric({double h = 0.0, double v = 0.0}) =>
      EdgeInsets.symmetric(horizontal: getUniqueW(h), vertical: getUniqueH(v));

  static EdgeInsets all(double size) => symmetric(
        h: getUniqueW(size),
        v: getUniqueH(size),
      );

  static EdgeInsets only({
    double right = 0.0,
    double left = 0.0,
    double top = 0.0,
    double bottom = 0.0,
  }) =>
      EdgeInsets.only(
        top: getUniqueH(top),
        bottom: getUniqueH(bottom),
        right: getUniqueW(right),
        left: getUniqueH(left),
      );
}
