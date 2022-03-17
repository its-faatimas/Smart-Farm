import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: MyColors.lightGrey,
      thickness: getUniqueH(1.0),
      height: getUniqueH(1.0),
    );
  }
}