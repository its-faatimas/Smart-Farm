import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class FarmDetailPageView extends StatefulWidget {
  const FarmDetailPageView({Key? key}) : super(key: key);

  @override
  State<FarmDetailPageView> createState() => _FarmDetailPageViewState();
}

class _FarmDetailPageViewState extends State<FarmDetailPageView>
    with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildImageSection(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: tabBar(),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: getUniqueH(15.0),
                  right: getUniqueW(15.0),
                  left: getUniqueW(15.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: text("Sigir"),
                    ),
                    card(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: text("Ot"),
                    ),
                    card(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: text("Tovuq"),
                    ),
                    card(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImageSection() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SafeArea(
          child: Container(
            height: getUniqueH(300),
            color: Colors.amber,
            child: Stack(),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: -1,
          child: Container(
            height: getUniqueH(13),
            decoration: BoxDecoration(
              color: MyColors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(
                  getUniqueW(10),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget tabBar() {
    return TabBar(
      controller: _tabController,
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: MyColors.primary,
      ),
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorWeight: 4.0,
      labelColor: MyColors.white,
      unselectedLabelColor: MyColors.black,
      tabs: [
        Tab(
          child: MyTextRegular(
            text: "Sigir",
            size: 16.0,
          ),
        ),
        Tab(
          child: MyTextRegular(
            text: "Ot",
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
            text: "Sigir",
            size: 16.0,
          ),
        ),
      ],
    );
  }

  Widget text(text) {
    return MyTextBold(
      text: text,
      size: 20.0,
    );
  }

  Widget card() {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              MyAnimalsCardBottom(
                data: "28.01.2022",
                price: "200000",
                img: "img",
                text: "Tovuq",
              ),
              MySizedBox(width: 20.0),
              MyAnimalsCardBottom(
                data: "28.01.2022",
                price: "200000",
                img: "img",
                text: "Tovuq",
              ),
            ],
          ),
          MySizedBox(height: 20.0),
          Row(
            children: [
              MyAnimalsCardBottom(
                data: "28.01.2022",
                price: "200000",
                img: "img",
                text: "Tovuq",
              ),
              MySizedBox(width: 20.0),
              MyAnimalsCardBottom(
                data: "28.01.2022",
                price: "200000",
                img: "img",
                text: "Tovuq",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
