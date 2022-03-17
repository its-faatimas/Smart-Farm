import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class NoConnectionPage extends StatefulWidget {
  const NoConnectionPage({Key? key}) : super(key: key);

  @override
  _NoConnectionPageState createState() => _NoConnectionPageState();
}

class _NoConnectionPageState extends State<NoConnectionPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: getUniqueH(27.98),
                left: getUniqueW(15.0),
                right: getUniqueW(15.0),
                bottom: getUniqueH(37.0),
              ),
              height: getUniqueH(391.0),
              width: getUniqueW(330.0),
              child:
                  // SvgPicture.asset(
                  //   MyAssetIcons.no_connection,
                  //   fit: BoxFit.contain,
                  // ),
                  Image.asset(
                MyAssetImages.noConnection,
                fit: BoxFit.contain,
              ),
            ),
            MyTextBold(
              text: "Internet yo’q",
              color: MyColors.black,
              size: 20.0,
            ),
            SizedBox(height: getUniqueH(10.0)),
            MyTextRegular(
              text: "Bog’lanishni tekshirib qayta urinib ko’ring",
              color: MyColors.black,
              size: 16.0,
            ),
            SizedBox(
              height: getUniqueH(33.0),
            ),
            MyButton(
              onPressed: () {},
              label: "Qayta urinish",
            ),
          ],
        ),
      ),
    );
  }
}
