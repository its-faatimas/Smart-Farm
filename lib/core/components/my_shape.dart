import 'package:flutter/cupertino.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class MyShape {
  static RoundedRectangleBorder circular({
    double radius = 10.0,
    BorderSide borderSide = BorderSide.none,
  }) =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(getUniqueW(radius)),
        side: borderSide,
      );
}
