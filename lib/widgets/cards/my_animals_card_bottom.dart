import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class MyAnimalsCardBottom extends StatelessWidget {
  Color? color;
  String img;
  double? height;
  double? weight;
  String? text;
  String? price;
  String? data;

  MyAnimalsCardBottom({
    this.color = MyColors.white,
    required this.data,
    this.height = 242.0,
    this.weight = 155.0,
    required this.price,
    required this.img,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyAnimalFeedingInfo(),
          ),
        );
        Navigator.push(context, MaterialPageRoute(builder: (context) => AnimalsDetailPageView(),),);
      },
      child: Container(
        height: getUniqueH(height!),
        width: getUniqueW(weight!),
        decoration: BoxDecoration(
          border: Border.all(
            color: MyColors.lightGrey,
            width: getUniqueW(1.0),
          ),
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Container(
              height: getUniqueH(120.0),
              width: getUniqueW(weight!),
              decoration: BoxDecoration(
                color: MyColors.lightGrey,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(img),
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: getUniqueH(20.0)),
            MyTextBold(
              text: text!,
              size: getUniqueW(16.0),
              color: MyColors.black,
            ),
            SizedBox(height: getUniqueH(5.0)),
            MyTextRegular(
              text: data!,
              size: getUniqueW(14.0),
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
                  text: _formattedPrice(price!),
                  size: getUniqueW(16.0),
                  color: MyColors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _formattedPrice(String price) {
    NumberFormat nf = NumberFormat('#,###');
    return nf.format(
      int.parse(price),
    );
  }
}
