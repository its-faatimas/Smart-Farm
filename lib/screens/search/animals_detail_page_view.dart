import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';


class AnimalsDetailPageView extends StatelessWidget {
  const AnimalsDetailPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: getUniqueH(208.4),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    MyAssetImages.horsee,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: getUniqueH(10.0),
                    left: getUniqueW(15.0),
                    child: FloatingActionButton(
                      backgroundColor: MyColors.white,
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: MyColors.black,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Positioned(
                    bottom: getUniqueH(15.0),
                    right: getUniqueW(15.0),
                    child: Container(
                      alignment: Alignment.center,
                      height: getUniqueH(41.0),
                      width: getUniqueW(63.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: MyColors.grey,
                      ),
                      child: MyTextRegular(
                        text: "2 oylik",
                        size: getUniqueW(14.0),
                        color: MyColors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: getUniqueH(15.0),
                left: getUniqueW(15.0),
                bottom: getUniqueH(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyTextRegular(
                    text: "Bugun 14:52",
                    size: getUniqueW(12.0),
                    color: MyColors.grey,
                  ),
                  MySizedBox(height: getUniqueH(10.0)),
                  MyTextRegular(
                    text: "Sof zotli toy",
                    size: getUniqueW(24.0),
                    color: MyColors.black,
                  ),
                  MySizedBox(height: getUniqueH(5.0)),
                  MyTextSemibold(
                    text: "2 000 000 Sum",
                    size: getUniqueW(20.0),
                    color: MyColors.black,
                  ),
                  MySizedBox(height: getUniqueH(15.0)),
                  Divider(
                    color: MyColors.grey,
                    endIndent: getUniqueW(15.0),
                  ),
                  MySizedBox(height: getUniqueH(20.0)),
                  MyTextRegular(
                    text: "Mavjud:",
                    size: getUniqueW(18.0),
                  ),
                  MySizedBox(height: getUniqueH(5.0)),
                  MyTextRegular(
                    text: "12 dona",
                    size: getUniqueW(14.0),
                    color: MyColors.grey,
                  ),
                  MySizedBox(height: getUniqueH(20.0)),
                  MyTextRegular(
                    text: "Izoh",
                    size: 18.0,
                  ),
                  MySizedBox(height: getUniqueH(5.0)),
                  MyTextRegular(
                    text:
                        "2 oy davomida Germaniyadan nasldan naslga hech qanday kasallik yo'q",
                    size: getUniqueW(14.0),
                    maxLines: 2,
                    color: MyColors.grey,
                  ),
                  MySizedBox(height: getUniqueH(29.0)),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          height: getUniqueH(52.0),
                          width: getUniqueW(160.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: MyColors.primary,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: MyTextRegular(
                            text: "Bog'lanmoq",
                            size: getUniqueW(16.0),
                            color: MyColors.primary,
                          ),
                        ),
                      ),
                      MySizedBox(width: getUniqueW(10.0)),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          height: getUniqueH(52.0),
                          width: getUniqueW(160.0),
                          decoration: BoxDecoration(
                            color: MyColors.primary,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: MyTextRegular(
                            text: "Sotib olish",
                            size: getUniqueW(16.0),
                            color: MyColors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
