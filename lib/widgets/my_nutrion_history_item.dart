import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class MyNutrionHistoryItem extends StatelessWidget {
  const MyNutrionHistoryItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        getUniqueW(15),
        getUniqueH(15),
        getUniqueW(15),
        getUniqueH(0),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyTextBold(
                    text: "Makkajo'xori",
                    size: 16.0,
                    color: MyColors.black,
                  ),
                  SizedBox(height: getUniqueH(5)),
                  MyTextRegular(
                    text: '1kg · 15 000 sum',
                    size: 12.0,
                    color: MyColors.black,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyTextRegular(
                    text: '27.09.2021',
                    size: 12.0,
                    color: MyColors.grey,
                  ),
                  SizedBox(height: getUniqueH(5)),
                  MyTextRegular(
                    text: '14:16',
                    size: 12.0,
                    color: MyColors.grey,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: getUniqueH(15)),
          Divider(thickness: getUniqueH(1.0), color: MyColors.lightGrey),
        ],
      ),
    );
  }
}
