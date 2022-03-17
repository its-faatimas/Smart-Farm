import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class LanguageChangePageView extends StatelessWidget {
  const LanguageChangePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SettingsAppBar(title: AppStrings.tilSozlamalari),
      body: Container(
        height: getUniqueH(120),
        margin: MyEdgeInsets.only(left: 15, top: 30, right: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            // BUTTON OZBEK TILI
            MyOutlinedButton(
              onPressed: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(MyAssetIcons.uzb, width: getUniqueW(30)),
                  SizedBox(height: getUniqueH(28)),
                  MyTextMedium(AppStrings.ozbekTili,size: 18)
                ],
              ),
              vPadding: 15,
              hPadding: 20,
              fixedSize: Size(getUniqueW(155), getUniqueH(120)),
            ),

            // BUTTON RUSSKIY YAZIK
            MyOutlinedButton(
              onPressed: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(MyAssetIcons.rus,width: getUniqueW(30)),
                  SizedBox(height: getUniqueH(28)),
                  MyTextMedium(AppStrings.russkiyYazik,size: 18)
                ],
              ),
              vPadding: 15,
              hPadding: 20,
              fixedSize: Size(getUniqueW(155), getUniqueH(120)),
            )
          ],
        ),
      ),
    );
  }
}