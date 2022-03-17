import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';
import 'package:smartfarm/cubit/on_boarding_cubit/on_boarding_page_cubit.dart';

class OnBoardingPageView extends StatelessWidget {
  OnBoardingPageView({Key? key}) : super(key: key);

  List<String> pageTitle = [
    'Sevimli\nhayvonlaringizni\nonlayn sotib oling',
    "Ularni o'z\nnazoratingiz ostida\nboqing",
    'Jarayonni\nreal-time kuzatib\nboring',
  ];
  late int _currentPage;
  late int _pagesLength;
  late var _controller;
  late var _contextRead;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: (context) => OnBoardingPageCubit(),
      child: BlocBuilder<OnBoardingPageCubit, OnBoardingPageState>(
        builder: (context, state) {
          _currentPage = context.watch<OnBoardingPageCubit>().currentPage;
          _pagesLength = context.watch<OnBoardingPageCubit>().pagesLength;
          _controller = context.watch<OnBoardingPageCubit>().controller;
          _contextRead = context.read<OnBoardingPageCubit>();
          return buildScaffold(
              _contextRead, _controller, _currentPage, _pagesLength, context);
        },
      ),
    );
  }

  Scaffold buildScaffold(OnBoardingPageCubit _contextRead, var _controller,
      int _currentPage, int _pagesLength, BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SafeArea(
            child: SizedBox(
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenWidth / 360 * 350 + getUniqueH(120),
              child: Flexible(
                child: PageView.builder(
                  controller: _controller,
                  physics: const BouncingScrollPhysics(),
                  onPageChanged: (v) {
                    _contextRead.changeCurrentPage(v);
                  },
                  itemCount: _pagesLength,
                  itemBuilder: (context, index) {
                    print(index);
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          MyAssetImages.cows,
                          fit: BoxFit.fitWidth,
                          width: SizeConfig.screenWidth,
                        ),
                        Container(
                          height: getUniqueH(120),
                          padding: MyEdgeInsets.only(left: 30, bottom: 30),
                          child: MyTextBold(text: pageTitle[index], size: 30),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
          MyPageIndicator(
            length: _pagesLength,
            currentIndex: _currentPage,
            color: MyColors.primary,
          ),
          SizedBox(height: getUniqueH(37)),
          Center(
            child: MyButton(
                onPressed: () {
                  _contextRead.incrementCount();
                  if (_currentPage == 3) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>  HomePageView(),
                      ),
                    );
                  }
                },
                label: 'Keyingi'),
          ),
        ],
      ),
    );
  }
}
// Column buildBody(BuildContext context) {
//   return Column(
//     children: [
//       SafeArea(
//           child: Image.asset(
//         MyAssetImages.chicken,
//         width: SizeConfig.screenWidth,
//       )),
//       Container(
//         height: getUniqueH(580.0),
//         width: MediaQuery.of(context).size.width,
//         child: IntroPage(
//           indx: indx,
//           pageData: pageData,
//           indicatorSize: 14,
//           activeIndicatorColor: Colors.orange,
//           onPageChange: (page) {},
//         ),
//       ),
//     ],
//   );
// }
