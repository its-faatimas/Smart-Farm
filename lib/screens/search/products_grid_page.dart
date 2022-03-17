import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';
class ProductsGridPageView extends StatefulWidget {
  const ProductsGridPageView({Key? key}) : super(key: key);

  @override
  State<ProductsGridPageView> createState() => ProductsGridPageState();
}

class ProductsGridPageState extends State<ProductsGridPageView>
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
                          text: "Sut mahsulotlar",
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
                  card(
                    "12000",
                    "Qatiq",
                    "img",
                  ),
                  MySizedBox(
                    width: getUniqueW(20.0),
                  ),
                  card(
                    "15000",
                    "Sut",
                    "img",
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
            text: "Mol suti",
            size: 16.0,
          ),
        ),
        Tab(
          child: MyTextRegular(
            text: "Qatiq",
            size: 16.0,
          ),
        ),
      ],
    );
  }

  Widget card(price, text, img) {
    return Column(
      children: [
        MyProductCardBottom(
          price: price,
          text: text,
          img: img,
        ),
        MySizedBox(height: getUniqueH(20.0)),
        MyProductCardBottom(
          price: price,
          text: text,
          img: img,
        ),
        MySizedBox(height: getUniqueH(20.0)),
        MyProductCardBottom(
          price: price,
          text: text,
          img: img,
        ),
        MySizedBox(height: getUniqueH(20.0)),
        MyProductCardBottom(
          price: price,
          text: text,
          img: img,
        ),
        MySizedBox(height: getUniqueH(60.0)),
      ],
    );
  }
}
