import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class AnimalsCategoryPage extends StatefulWidget {
  AnimalsCategoryPage({Key? key}) : super(key: key);

  @override
  State<AnimalsCategoryPage> createState() => _AnimalsCategoryPageState();
}

class _AnimalsCategoryPageState extends State<AnimalsCategoryPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: getUniqueH(9.98),
              right: getUniqueW(21.01),
              left: getUniqueW(15.0),
              bottom: getUniqueH(20.0),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    MyAssetIcons.vector,
                    height: getUniqueH(12.01),
                    width: getUniqueW(12.0),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: getUniqueH(45.0),
                  width: getUniqueW(245.0),
                  child: MySearchTextField(),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getUniqueW(15.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyTextBold(
                  text: "Hayvonlar",
                  size: getUniqueW(20.0),
                  color: MyColors.black,
                ),
                SizedBox(height: getUniqueH(10.0)),
                Row(
                  children: [
                    MyAnimalButtons(
                      img: MyAssetImages.cow,
                      text: "Sigir",
                    ),
                    SizedBox(width: getUniqueW(15.0)),
                    MyAnimalButtons(
                      img: MyAssetImages.chicken,
                      text: "Tovuq",
                    ),
                    SizedBox(width: getUniqueW(15.0)),
                    MyAnimalButtons(
                      img: MyAssetImages.sheep,
                      text: "Qo'y",
                    ),
                  ],
                ),
                SizedBox(height: getUniqueH(15.0)),
                Row(
                  children: [
                    MyAnimalButtons(
                      img: MyAssetImages.horse,
                      text: "Ot",
                    ),
                    SizedBox(width: getUniqueW(15.0)),
                    MyAnimalButtons(
                      img: MyAssetImages.sheep,
                      text: "Qo'y",
                    ),
                    SizedBox(width: getUniqueW(15.0)),
                    MyAnimalButtons(
                      img: MyAssetImages.chicken,
                      text: "Tovuq",
                    ),
                  ],
                ),
                SizedBox(height: getUniqueH(15.0)),
                Row(
                  children: [
                    MyAnimalButtons(
                      img: MyAssetImages.chicken,
                      text: "Tovuq",
                    ),
                    SizedBox(width: getUniqueW(15.0)),
                    MyAnimalButtons(
                      img: MyAssetImages.horse,
                      text: "Ot",
                    ),
                    SizedBox(width: getUniqueW(15.0)),
                    MyAnimalButtons(
                      img: MyAssetImages.sheep,
                      text: "Qo'y",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
