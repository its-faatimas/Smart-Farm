import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class MyBorder {
  static BorderRadius circular({double radius = 10.0}) =>
      BorderRadius.circular(getUniqueW(radius));
}

