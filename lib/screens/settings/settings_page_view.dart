import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class SettingsPageView extends StatelessWidget {
  const SettingsPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // USER INFO TITLE SECTION
            buildListTile(),
            Padding(
              padding: MyEdgeInsets.only(left: 15.0, right: 15, top: 185),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // DEPOZIT SECTION
                      MyOutlinedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DepozitPageView(),
                            ),
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(MyAssetIcons.card,
                                width: getUniqueW(22)),
                            SizedBox(height: getUniqueH(20)),
                            MyTextMedium('Depozit', size: 16),
                          ],
                        ),
                        vPadding: 15,
                        hPadding: 15,
                        fixedSize: Size(getUniqueW(155), getUniqueH(92)),
                      ),

                      // PURCHASE HISTORY SECTION
                      MyOutlinedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const PurchaseHistoryPageView(),
                            ),
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(MyAssetIcons.oclock,
                                width: getUniqueW(22)),
                            SizedBox(height: getUniqueH(20)),
                            MyTextMedium('Xaridlar tarixi', size: 16),
                          ],
                        ),
                        vPadding: 15,
                        hPadding: 15,
                        fixedSize: Size(getUniqueW(155), getUniqueH(92)),
                      ),
                    ],
                  ),
                  MySizedBox(height: 20),

                  // EDIT PROFILE DATA SECTION
                  MyOutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DataEditingPageView(),
                        ),
                      );
                    },
                    child: MyTextMedium(
                      'Profilni tahrirlash',
                      size: 16,
                    ),
                    vPadding: 18,
                    hPadding: 100,
                    fixedSize: Size(getUniqueW(330), getUniqueH(52)),
                  ),
                  MySizedBox(height: 20),

                  // CHANGE LANGUAGE SECTION
                  MyOutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LanguageChangePageView(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          MyAssetIcons.globe,
                          width: getUniqueW(24),
                        ),
                        MySizedBox(width: 15),
                        MyTextMedium(
                          "Tilni o'zgartirish",
                          size: 16,
                        ),
                        const Spacer(),
                        SvgPicture.asset(
                          MyAssetIcons.right,
                          width: getUniqueW(24),
                        ),
                      ],
                    ),
                    vPadding: 25,
                    hPadding: 30,
                    fixedSize: Size(getUniqueW(330), getUniqueH(74)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildListTile() {
    return SafeArea(
      child: Container(
        margin: MyEdgeInsets.only(left: 15.0, top: 30, right: 15),
        height: getUniqueH(60),
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: getUniqueH(60),
              width: getUniqueH(60),
              margin: MyEdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(getUniqueH(30)),
                  color: MyColors.grey),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyTextBold(text: GetStorage().read('username'), size: 18),
                MySizedBox(height: 8.0),
                MyTextRegular(text: "+" + GetStorage().read('phone')),
              ],
            ),
            const Spacer(),
            PopupMenuButton(
                icon: const Icon(Icons.more_vert),
                enabled: true,
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Chiqish",
                            style: TextStyle(color: Colors.red),
                          ),
                          Icon(Icons.logout, color: Colors.red),
                        ],
                      ),
                      onTap: () {
                        GetStorage().write('token', '').then((value) {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignInView()),
                              (route) => false);
                        });
                      },
                    )
                  ];
                }),
          ],
        ),
      ),
    );
  }
}
