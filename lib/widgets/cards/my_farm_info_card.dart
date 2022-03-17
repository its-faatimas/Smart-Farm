import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class MyFarmInfoCard extends StatelessWidget {
  const MyFarmInfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => FarmDetailPageView(),));
      },
      child: Container(
        height: getUniqueH(150.0),
        width: getUniqueW(330.0),
        margin: MyEdgeInsets.symmetric(h: getUniqueW(15.0), v: 7.5),
        padding: MyEdgeInsets.symmetric(h: getUniqueW(10.0), v: getUniqueH(13.0)),
        decoration: MyDecoration.withImage(
          imageUrl: Links.cow,
          color: Colors.amber,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _setChip('172', color: MyColors.green, radius: 58.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyTextBold(
                      text: 'Ina ferma',
                      size: 16.0,
                      color: MyColors.white,
                    ),
                    MyTextRegular(
                      text: 'Eng yaxshi fermer xo\'jaliklaridan...',
                      maxLines: 1,
                      size: 10.0,
                      color: MyColors.white,
                    ),
                  ],
                ),
                Wrap(
                  spacing: getUniqueW(5.0),
                  children: [
                    _setChip('Sigir'),
                    _setChip('Ot'),
                    // _setChip('12+'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Chip _setChip(
    String label, {
    Color color = MyColors.primary,
    double radius = 6.0,
  }) =>
      Chip(
        label: MyTextRegular(
          text: label,
          size: 12.0,
          color: MyColors.white,
        ),
        backgroundColor: color,
        padding: MyEdgeInsets.symmetric(
          h: getUniqueW(10.0),
          v: getUniqueH(4.0),
        ),
        shape: MyShape.circular(radius: radius),
      );
}
