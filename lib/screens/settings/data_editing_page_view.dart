import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class DataEditingPageView extends StatelessWidget {
  const DataEditingPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:SettingsAppBar(title: AppStrings.meningMalumotlarim),
        body: Padding(
          padding: MyEdgeInsets.only(left: 15.0, top: 30.0, right: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                  radius: getUniqueW(50), backgroundColor: MyColors.grey),
              SizedBox(width: SizeConfig.screenWidth, height: getUniqueH(10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    MyAssetIcons.pen,
                    width: getUniqueW(24),
                  ),
                  MyTextBold(text: "O'zgartirish", size: 12),
                ],
              ),
              MySizedBox(height: 5),
              buildInfoCard(description: 'Ism', title: 'Abdumalik'),
              buildInfoCard(description: 'Familia', title: 'Kalandarov'),
              buildInfoCard(
                  description: 'Telefon raqami', title: '+998 90 123 45 67'),
              buildInfoCard(
                  description: 'E-pochta', title: 'Kalandarov@gmail.com'),
              MySizedBox(height: 40),
              MyButton(onPressed: () {
                showModalBottomSheet(
                    backgroundColor: Colors.transparent,

                    context: context, builder: (_) {
                  return PhoneNumberBottomSheet();
                });
              }, label: "O'zgarishlarni saqlash")
            ],
          ),
        ));
  }

  Column buildInfoCard({required String description, required String title}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MySizedBox(height: 15),
        MyTextRegular(text: description, size: 14, color: MyColors.grey),
        MySizedBox(height: 7),
        MyTextMedium(title, size: 18),
        MySizedBox(height: 7),
        const Divider(thickness: 1, color: MyColors.grey)
      ],
    );
  }
}
