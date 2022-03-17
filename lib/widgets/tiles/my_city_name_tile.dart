import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class MyCityNameTile extends StatelessWidget {
  const MyCityNameTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: MyTextRegular(text: 'Tashkent', color: Colors.black, size: 16.0),
      trailing: const Icon(Icons.chevron_right_outlined, color: Colors.black),
      contentPadding: MyEdgeInsets.all(15.0),
      onTap: (){},
    );
  }
}
