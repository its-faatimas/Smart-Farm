import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class MyProductCardBottom extends StatelessWidget {
  Color? color;
  String? img;
  double? height;
  double? weight;
  String? text;
  String? price;

  MyProductCardBottom({
    this.color = MyColors.white,
    this.height = 220.0,
    this.weight = 155.0,
    required this.price,
    this.img,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: getUniqueH(height!),
      width: getUniqueW(weight!),
      decoration: BoxDecoration(
        color: color,
        boxShadow: const [
          BoxShadow(
            color: MyColors.grey,
            blurRadius: 1.0,
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            height: getUniqueH(120.0),
            width: getUniqueW(weight!),
            decoration: const BoxDecoration(
              color: MyColors.lightGrey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
            ),
          ),
          SizedBox(height: getUniqueH(20.0)),
          MyTextBold(
            text: text!,
            size: 16.0,
            color: MyColors.black,
          ),
          SizedBox(height: getUniqueH(15.0)),
          Container(
            height: getUniqueH(40.0),
            width: getUniqueW(145.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: MyColors.disabled,
            ),
            child: Center(
              child: MyTextBold(
                text: price!,
                size: 16.0,
                color: MyColors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
