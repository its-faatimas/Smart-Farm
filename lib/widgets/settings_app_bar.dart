import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class SettingsAppBar extends StatelessWidget with PreferredSizeWidget {
  String title;

  SettingsAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: getUniqueH(10.0),
      backgroundColor: MyColors.white,
      centerTitle: false,
      title: MyTextSemibold(text: title, size: 18.0),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, getUniqueH(56.0));
}
