import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class MyPageIndicator extends StatelessWidget {
  Color color;
  int currentIndex;
  int length;

  MyPageIndicator({
    Key? key,
    this.color = MyColors.lightGrey,
    this.currentIndex = 0,
    required this.length,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Align(
        child: Wrap(
          spacing: getUniqueW(3.0),
          children: List.generate(length, (index) => _setIndicator(index)),
        ),
      );

  AnimatedContainer _setIndicator(int index) => AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: getUniqueW(7.0),
        width: getUniqueW(currentIndex == index ? 20 : 7.0),
        decoration: MyDecoration.circular(
          radius: 100,
          color: currentIndex == index ? color : color.withOpacity(0.6),
        ),
      );
}
