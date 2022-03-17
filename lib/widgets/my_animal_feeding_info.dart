import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';
import 'package:smartfarm/models/myanimals_model.dart';

class MyAnimalFeedingInfo extends StatelessWidget {
  final MyAnimalsModel? myAnimal;
  const MyAnimalFeedingInfo({Key? key, this.myAnimal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                // IMAGE
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    getUniqueW(10.0),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: dotenv.env['API_ADDRESS'].toString() +
                        myAnimal!.img!.formats!.medium!.url.toString(),
                    height: getUniqueH(190.0),
                    width: getUniqueW(230.0),
                    fit: BoxFit.cover,
                  ),
                ),
                // MEDICAL BUTTON
                Positioned(
                  top: getUniqueH(-8.0),
                  right: getUniqueW(-8.0),
                  child: FloatingActionButton(
                    heroTag: 'drug_detail',
                    elevation: 0.0,
                    backgroundColor: Colors.red,
                    onPressed: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (_) => MyProductBuyingBottom(),
                      );
                    },
                    child: SvgPicture.asset(
                      MyAssetIcons.medicationBox,
                    ),
                  ),
                ),
                //  ANIMALS COUNT INFO
                Positioned(
                  bottom: getUniqueH(7.0),
                  left: getUniqueW(10.0),
                  child: MyContainerWithOpacity(
                    vPadding: 7.0,
                    hPadding: 12.0,
                    child: MyTextBold(
                      text: myAnimal!.count.toString(),
                      size: 12.0,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: getUniqueH(190.0),
              width: getUniqueW(85.0),
              padding: MyEdgeInsets.all(7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(getUniqueH(10)),
                border: Border.all(width: 1, color: MyColors.grey),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Spacer(),

                  //  CORN BUTTON

                  InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          context: context,
                          builder: (_) => MyProductBuyingBottom(),
                        );
                      },
                      child: SvgPicture.asset(MyAssetIcons.corn)),
                  const Spacer(),
                  _setFoodPercent(),
                ],
              ),
            )
          ],
        ),
        MySizedBox(height: 15.0),
        _commentButton(context)
      ],
    );
  }

  Widget _commentButton(BuildContext context) {
    return MyOutlinedButton(
      vPadding: 10.0,
      hPadding: 10.0,
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MyAnimalsDetailPageView(),
            ));
      },
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyTextBold(
                  text: myAnimal!.name.toString(),
                  size: 18.0,
                  color: Colors.black,
                ),
                MySizedBox(height: 10.0),
                MyTextBold(text: 'Izoh', color: Colors.black),
                MySizedBox(height: 5.0),
                MyTextRegular(
                  text: myAnimal!.description.toString(),
                  maxLines: 2,
                )
              ],
            ),
          ),
          _showAnimalPercent(),
        ],
      ),
    );
  }

  Widget _showAnimalPercent() => Container(
        width: getUniqueW(75.0),
        alignment: Alignment.center,
        height: getUniqueH(108.0),
        decoration: MyDecoration.circular(color: MyColors.primary),
        child: MyTextBold(
            text: '${myAnimal!.percentMade}%',
            color: MyColors.white,
            size: 16.0),
      );

  Widget _setFoodPercent() => Container(
        padding: MyEdgeInsets.symmetric(v: 6),
        width: getUniqueW(71.0),
        alignment: Alignment.center,
        child: MyTextRegular(
            text: '${myAnimal!.percentFood}%', color: MyColors.red),
        decoration: MyDecoration.circular(
          radius: 7.0,
          border: Border.all(
            color: MyColors.red,
            width: getUniqueW(1.0),
          ),
        ),
      );
}
