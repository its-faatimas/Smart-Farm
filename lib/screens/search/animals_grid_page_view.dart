import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class AnimalsGridPageView extends StatefulWidget {
  const AnimalsGridPageView({Key? key}) : super(key: key);

  @override
  State<AnimalsGridPageView> createState() => _AnimalsGridPageViewState();
}

class _AnimalsGridPageViewState extends State<AnimalsGridPageView>
    with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: getUniqueH(126.0),
                child: Column(
                  children: [
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
                        MySizedBox(width: getUniqueW(44.0)),
                        MyTextBold(
                          text: "Tovuq",
                          size: 20.0,
                        ),
                      ],
                    ),
                    MySizedBox(height: getUniqueH(20.0)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: tabBar(),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  cardAnimals(
                    "28.01.2022",
                    "2000000",
                    "img",
                    "Tovuq",
                  ),
                  MySizedBox(
                    width: getUniqueW(20.0),
                  ),
                  cardAnimals(
                    "28.01.2022",
                    "5050000",
                    "img",
                    "Tovuq",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget tabBar() {
    return TabBar(
      controller: _tabController,
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: MyColors.primary,
      ),
      indicatorColor: Colors.grey,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorWeight: 4.0,
      labelColor: MyColors.grey,
      unselectedLabelColor: MyColors.black,
      tabs: [
        Tab(
          child: MyTextRegular(
            text: "Barchasi",
            size: 16.0,
          ),
        ),
        Tab(
          child: MyTextRegular(
            text: "Tovuq",
            size: 16.0,
          ),
        ),
        Tab(
          child: MyTextRegular(
            text: "Oddiy tovuq",
            size: 16.0,
          ),
        ),
      ],
    );
  }

  Widget cardAnimals(data, price, img, text) {
    return Column(
      children: [
        MyAnimalsCardBottom(
          data: data,
          price: price,
          img: img,
          text: text,
        ),
        MySizedBox(height: getUniqueH(20.0)),
        MyAnimalsCardBottom(
          data: data,
          price: price,
          img: img,
          text: text,
        ),
        MySizedBox(height: getUniqueH(20.0)),
        MyAnimalsCardBottom(
          data: data,
          price: price,
          img: img,
          text: text,
        ),
        MySizedBox(height: getUniqueH(20.0)),
        MyAnimalsCardBottom(
          data: data,
          price: price,
          img: img,
          text: text,
        ),
        MySizedBox(height: getUniqueH(60.0)),
      ],
    );
  }
}
