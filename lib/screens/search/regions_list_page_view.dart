import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class RegionListPageView extends StatelessWidget {
  RegionListPageView({Key? key}) : super(key: key);

  List<String> shahar = <String>[
    'Andijon viloyati',
    'Buxoro viloyati',
    'Jizzax viloyati',
    'Qoraqalpog\'iston',
    'Qashqadaryo viloyati',
    'Navoiy viloyati',
    'Navoiy viloyati',
    'Surxondaryo viloyati',
    'Sirdaryo viloyati',
    'Toshkent viloyati',
    'Farg\'ona viloyati',
    'Xorazm viloyati',
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MySizedBox(height: getUniqueH(9.98)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MySizedBox(width: getUniqueW(21.0)),
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(
                      MyAssetIcons.vector,
                    ),
                  ),
                  MySizedBox(width: getUniqueW(16.0)),
                  Container(
                    // height: getUniqueH(100.0),
                    width: getUniqueW(296.0),
                    child: MySearchTextField(),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getUniqueH(20.0),
                  left: getUniqueW(15.0),
                  bottom: getUniqueH(20.0),
                ),
                child: MyTextBold(
                  text: "Viloyatni tanlang",
                  size: 24.0,
                ),
              ),
              const Divider(thickness: 0.0),
              Container(
                height: getUniqueH(495.0),
                width: getUniqueW(360.0),
                padding: EdgeInsets.only(
                  // top: getUniqueH(20.0),
                  left: getUniqueW(15.0),
                  right: getUniqueW(15.0),
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: shahar.length,
                  itemBuilder: (BuildContext context, index) {
                    return shaharlar("${shahar[index]}");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget shaharlar(String text) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          MySizedBox(height: 5.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyTextRegular(
                text: text,
                size: 16.0,
              ),
              InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  MyAssetIcons.right,
                ),
              ),
            ],
          ),
          MySizedBox(height: 10.0),
          Divider(thickness: 0.0),
        ],
      ),
    );
  }
}
