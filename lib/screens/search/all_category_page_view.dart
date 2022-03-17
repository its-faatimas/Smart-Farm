import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class AllCategoryPageView extends StatelessWidget {
  String categoryName;

  AllCategoryPageView({
    required this.categoryName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _buildAppBar(),
          _setText(categoryName),
          categoryName == "Fermalar" ? _showFarmList() : _showAnimalList(),
        ],
      ),
    );
  }

  SliverPadding _showAnimalList() {
    return SliverPadding(
      padding: MyEdgeInsets.symmetric(h: 10.0, v: 10.0),
      sliver: SliverGrid.count(
        crossAxisCount: 3,
        mainAxisSpacing: getUniqueH(15.0),
        crossAxisSpacing: getUniqueW(15.0),
        children: List.generate(
          AnimalList.animals.length,
          (index) {
            AnimalCategory category = AnimalList.animals[index];
            return MyAnimalButtons(
              img: category.imagePath,
              text: category.name,
            );
          },
        ),
      ),
    );
  }

  SliverList _showFarmList() {
    return SliverList(
      delegate: SliverChildBuilderDelegate((ctx, i) {
        return MyFarmInfoCard();
      }, childCount: 5),
    );
  }

  SliverAppBar _buildAppBar() {
    return SliverAppBar(
      backgroundColor: MyColors.white,
      toolbarHeight: getUniqueH(64.0),
      leadingWidth: getUniqueW(49.0),
      floating: true,
      title: MySearchTextField(),
    );
  }

  SliverToBoxAdapter _setText(String text) => SliverToBoxAdapter(
        child: Padding(
          padding: MyEdgeInsets.symmetric(h: 15.0),
          child: MyTextBold(text: categoryName, size: 20.0),
        ),
      );
}
