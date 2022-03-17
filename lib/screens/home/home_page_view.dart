import 'package:flutter/material.dart';
import 'package:simple_connection_checker/simple_connection_checker.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';
import 'package:smartfarm/cubit/home_cubit/home_page_cubit.dart';
import 'package:smartfarm/models/myanimals_model.dart';
import 'package:smartfarm/services/myanimals_service.dart';

class HomePageView extends StatefulWidget {
  HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  int indicatorCount = 1;
  bool _isOnline = false;

  @override
  void initState() {
    super.initState();

    SimpleConnectionChecker.isConnectedToInternet().then((value) {
      _isOnline = value;
      setState(() {});
    });
    Future.delayed(const Duration(seconds: 1)).then((value) async {
      await ServiceMyAnimals.getMyAnimals();

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomePageCubit(),
      child:
          BlocBuilder<HomePageCubit, HomePageState>(builder: (context, state) {
        var _contextWatch = context.watch<HomePageCubit>();
        var _contextRead = context.read<HomePageCubit>();
        return buildScaffold(_contextWatch, _contextRead, context);
      }),
    );
  }

  Widget _buildFloatingActionButton(BuildContext context) {
    return Align(
      child: FloatingActionButton(
        heroTag: 'farm_detail',
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FarmDetailPageView(),
              ));
        },
        backgroundColor: MyColors.white,
        child: SvgPicture.asset(MyAssetIcons.plus),
      ),
    );
  }

  Widget buildScaffold(HomePageCubit _contextWatch, HomePageCubit _contextRead,
      BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                // PAGE VIEW SECTION
                _isOnline
                    ? FutureBuilder(
                        future: ServiceMyAnimals.getMyAnimals(),
                        builder: (context,
                            AsyncSnapshot<List<MyAnimalsModel>> snap) {
                          if (!snap.hasData) {
                            return const Center(
                              child: SizedBox(
                                height: 300,
                                child: CircularProgressIndicator.adaptive(),
                              ),
                            );
                          } else if (snap.hasError) {
                            return const Center(
                              child: Text(
                                "Internetda Muammo Bor",
                                style: TextStyle(fontSize: 33.0),
                              ),
                            );
                          } else {
                            List<MyAnimalsModel> mydata = snap.data!;

                            return firstWidgets(_contextRead, mydata);
                          }
                        },
                      )
                    : firstWidgets(_contextRead, ServiceMyAnimals.box),
                MySizedBox(height: 10.0),
                // PAGE VIEW INDICATOR
                MyPageIndicator(
                    length: indicatorCount,
                    currentIndex: _contextWatch.indicatorIndex),
                MySizedBox(height: 30.0),
                // FLOATTING ACTION BUTTON
                _buildFloatingActionButton(context),
                MySizedBox(height: 20.0),
                Divider(
                  thickness: getUniqueH(1.0),
                  color: MyColors.lightGrey,
                  height: getUniqueH(5.0),
                ),
                // FARMS SECTIONS
                Padding(
                  padding: MyEdgeInsets.all(15),
                  child: MyTextBold(
                      text: 'Fermalar', size: 20.0, color: MyColors.black),
                ),
              ],
            ),
          ),
          // GRID VIEW SECTION
          SliverPadding(
            padding: MyEdgeInsets.only(left: 15, right: 15, bottom: 15),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: getUniqueW(10),
                  mainAxisSpacing: getUniqueH(10),
                  childAspectRatio: 1.23),
              delegate: SliverChildBuilderDelegate(
                (context, index) => Container(
                  height: getUniqueH(130.0),
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(
                        "https://source.unsplash.com/random/1",
                      ),
                    ),
                  ),
                ),
                childCount: 3,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container firstWidgets(HomePageCubit _contextRead, mydata) {
    return Container(
      margin: MyEdgeInsets.only(left: 15.0, top: 50.0, right: 15),
      width: SizeConfig.screenWidth,
      height: getUniqueH(348),
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        onPageChanged: (v) {
          _contextRead.changeIndicatorIndex(v);
        },
        itemCount: mydata.length,
        itemBuilder: (context, index) {
          return MyAnimalFeedingInfo(
            myAnimal: _isOnline
                ? (mydata[index] as MyAnimalsModel)
                : (mydata.getAt(index) as MyAnimalsModel),
          );
        },
      ),
    );
  }
}
