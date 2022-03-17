import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class MyProductsCard extends StatelessWidget {
  const MyProductsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProductsGridPageView(),
            ));
      },
      child: Container(
        height: getUniqueH(100.0),
        width: getUniqueW(140.0),
        alignment: Alignment.bottomRight,
        decoration: MyDecoration.withImage(imageUrl: Links.cow),
        child: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(MyAssetIcons.rectangle),
            Positioned(
              bottom: getUniqueH(5.0),
              child: MyTextBold(
                text: AppStrings.cow,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
