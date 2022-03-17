import 'dart:math';
import 'dart:ui';
import 'package:smartfarm/core/components/exporting_packages.dart';

class RandomColor {
  static int _lastIndex = 0;
  static const List<Color> _colorList = [
    MyColors.primary,
    MyColors.green,
    MyColors.grey,
    MyColors.blue,
  ];

  static Color color() {
    int len = _colorList.length;

    while (true) {
      int random = Random().nextInt(len);

      if (random != _lastIndex) {
        _lastIndex = random;
        break;
      }
    }
    return _colorList[_lastIndex];
  }
}
