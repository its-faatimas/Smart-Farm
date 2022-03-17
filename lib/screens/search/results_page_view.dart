import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class ResultPageView extends StatefulWidget {
  ResultPageView({Key? key}) : super(key: key);

  @override
  State<ResultPageView> createState() => _ResultPageViewState();
}

class _ResultPageViewState extends State<ResultPageView>
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
            crossAxisAlignment: CrossAxisAlignment.center,
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
                    width: getUniqueW(296.0),
                    child: MySearchTextField(),
                  ),
                ],
              ),
              MySizedBox(height: getUniqueH(20.0)),
              tabBar()
            ],
          ),
        ),
      ),
    );
  }

  Widget tabBar() {
    return TabBar(
      controller: _tabController,
      indicatorColor: MyColors.black,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorWeight: 4.0,
      labelColor: MyColors.grey,
      unselectedLabelColor: MyColors.black,
      tabs: [
        Tab(
          child: MyTextRegular(
            text: "Hayvonlar",
            size: 16.0,
          ),
        ),
        Tab(
          child: MyTextRegular(
            text: "Ozuqalar",
            size: 16.0,
          ),
        ),
        Tab(
          child: MyTextRegular(
            text: "Fermalar",
            size: 16.0,
          ),
        ),
      ],
    );
  }
}
