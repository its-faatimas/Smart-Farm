import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class MyAnimalButtons extends StatelessWidget {
  String img;
  String text;

  MyAnimalButtons({
    required this.img,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.white,
      borderRadius: MyBorder.circular(),
      onTap: () {},
      child: Container(
        padding: MyEdgeInsets.only(top: 15.0, left: 10.0),
        height: getUniqueH(100.0),
        width: getUniqueW(100.0),
        decoration: MyDecoration.circular(color: RandomColor.color()),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyTextMedium(text, size: 18.0),
            Align(
              alignment: Alignment.bottomRight,
              child: ClipRRect(
                borderRadius: MyBorder.circular(),
                child: Image.asset(img, height: getUniqueH(53.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
