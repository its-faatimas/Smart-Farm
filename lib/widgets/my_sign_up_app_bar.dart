import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';
class MySignUpAppBar extends StatelessWidget with PreferredSizeWidget{
  const MySignUpAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar();
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, getUniqueH(56.0));
}
