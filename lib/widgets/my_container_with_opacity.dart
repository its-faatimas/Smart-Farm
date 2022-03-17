import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class MyContainerWithOpacity extends StatelessWidget {
  final double vPadding;
  final double hPadding;
  Widget? child;

  MyContainerWithOpacity({
    Key? key,
    this.hPadding = 15.0,
    this.vPadding = 5.0,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      padding: MyEdgeInsets.symmetric(h: hPadding, v: vPadding),
      decoration: MyDecoration.circular(
          radius: 10.0, color: Colors.white.withOpacity(0.2)),
    );
  }
}
