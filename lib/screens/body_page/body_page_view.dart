import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';
import 'package:smartfarm/cubit/body_cubit/body_page_cubit.dart';

class BodyPageView extends StatelessWidget {
  BodyPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: (_) => BodyPageCubit(),
      child: BlocBuilder<BodyPageCubit, BodyPageState>(
        builder: (context, state) {
          var _contextWatch = context.watch<BodyPageCubit>();
          var _contextRead = context.read<BodyPageCubit>();
          return buildScaffold(_contextWatch, _contextRead);
        },
      ),
    );
  }

  Scaffold buildScaffold(
      BodyPageCubit _contextWatch, BodyPageCubit _contextRead) {
    return Scaffold(
      body: _contextWatch.pages[_contextWatch.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: MyColors.primary,
        unselectedItemColor: MyColors.grey,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          _setItem(MyAssetIcons.home, 0, _contextWatch.currentIndex),
          _setItem(MyAssetIcons.search, 1, _contextWatch.currentIndex),
          _setItem(MyAssetIcons.calendar, 2, _contextWatch.currentIndex),
          _setItem(MyAssetIcons.settings, 3, _contextWatch.currentIndex),
        ],
        onTap: (i) {
          _contextRead.changePage(i);
        },
      ),
    );
  }

  BottomNavigationBarItem _setItem(
    String assetIcon,
    int index,
    int currentIndex,
  ) =>
      BottomNavigationBarItem(
        label: "",
        icon: SvgPicture.asset(
          assetIcon,
          height: getUniqueH(20.0),
          width: getUniqueW(20.0),
          color: currentIndex == index ? MyColors.primary : MyColors.grey,
        ),
      );
}
