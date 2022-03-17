import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class DepozitPageView extends StatelessWidget {
  const DepozitPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SettingsAppBar(title: AppStrings.depozit),
      body: Padding(
        padding: MyEdgeInsets.only(left: 15.0, top: 30.0, right: 15.0),
        child: Column(
          children: [
            const MyCreditCard(),
            MySizedBox(height: 15),
            Flexible(
              child: ListView.separated(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return buildDepozitStoryItem(index);
                },
                separatorBuilder: (context, index) => Padding(
                  padding: MyEdgeInsets.symmetric(v: 15),
                  child: const Divider(
                    color: MyColors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDepozitStoryItem(int index) {
    return Row(
      children: [
        Container(
          child: SvgPicture.asset(
            index == 2 ? MyAssetIcons.topArrow : MyAssetIcons.bottomArrow,
            width: getUniqueW(24),
            fit: BoxFit.none,
          ),
          width: getUniqueW(50),
          height: getUniqueW(50),
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: MyColors.grey),
              borderRadius: BorderRadius.circular(getUniqueW(10))),
        ),
        MySizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyTextMedium('Kalandarov Umid', size: 14),
            MySizedBox(height: 5),
            MyTextRegular(
                text: '27.09.202114:16', size: 12, color: MyColors.grey)
          ],
        ),
        const Spacer(),
        MyTextBold(text: '+ 50 000', size: 16),
      ],
    );
  }
}
