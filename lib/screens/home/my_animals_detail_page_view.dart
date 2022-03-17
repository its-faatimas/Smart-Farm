import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';


class MyAnimalsDetailPageView extends StatelessWidget {
  const MyAnimalsDetailPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildImageSection(),
            buildInfoSection(),
            Divider(thickness: getUniqueH(1.0), color: MyColors.lightGrey),
            buildTitleSection(),
            const MyNutrionHistoryItem(),
            const MyNutrionHistoryItem(),
            const MyNutrionHistoryItem(),
            buildButton(context)
          ],
        ),
      ),
    );
  }

  Widget buildTitleSection() {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        getUniqueW(15),
        getUniqueH(20),
        getUniqueW(15),
        getUniqueH(5),
      ),
      child: MyTextBold(
        text: 'Ovqatlanish tarixi',
        size: 18.0,
        color: Colors.black,
      ),
    );
  }

  Widget buildButton(BuildContext context) {
    return Padding(
      padding: MyEdgeInsets.symmetric(v: 30, h: 83.5),
      child: MyButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NutritionHistoryPageView(),
              ),
            );
          },
          label: "Ko'proq ko'rish"),
    );
  }

  Widget buildImageSection() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SafeArea(
          child: Container(
            height: getUniqueH(300),
            color: Colors.amber,
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: -1,
          child: Container(
            height: getUniqueH(13),
            decoration: BoxDecoration(
              color: MyColors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(
                  getUniqueW(10),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildInfoSection() {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        getUniqueW(15),
        getUniqueH(10),
        getUniqueW(15),
        getUniqueH(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyTextBold(
                text: 'Broller tovuq',
                size: 18.0,
                color: Colors.black,
              ),
              MySizedBox(height: 10.0),
              MyTextBold(text: 'Izoh', color: Colors.black),
              MySizedBox(height: 5.0),
              SizedBox(
                  width: getUniqueW(236),
                  child: MyTextRegular(
                    text: AppStrings.shuKunlarda,
                    maxLines: 4,
                  ))
            ],
          ),
          Container(
            width: getUniqueW(75.0),
            alignment: Alignment.center,
            height: getUniqueH(108.0),
            decoration: MyDecoration.circular(color: MyColors.primary),
            child: MyTextBold(text: '55%', color: MyColors.white, size: 16.0),
          )
        ],
      ),
    );
  }
}
