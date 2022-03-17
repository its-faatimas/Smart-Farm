import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class MyFeedingListTile extends StatelessWidget {
  const MyFeedingListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ListTile(
          title: MyTextRegular(
            text: "Makkajo'xori",
            color: Colors.black,
            size: 16.0,
          ),
          subtitle: MyTextRegular(
            text: "1kg · 15 000 sum",
            size: 12.0,
            color: Colors.black,
          ),
          trailing: MyTextRegular(
            text: _formattedDate(DateTime.now()),
            textAlign: TextAlign.right,
          ),
          contentPadding: MyEdgeInsets.symmetric(h: 15.0),
          onTap: () {},
        ),
        Divider(height: getUniqueH(1.0), color: MyColors.lightGrey),
      ],
    );
  }

  String _formattedDate(DateTime dateTime) {
    DateFormat df = DateFormat('dd.MM.yyyy\nHH:mm');
    String formattedDate = df.format(dateTime);
    return formattedDate;
  }
}
