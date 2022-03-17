import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  String token = "";
  bool isValid = true;
  @override
  void initState() {
    super.initState();
    try {
      token = GetStorage().read('token');
      isValid = JwtDecoder.isExpired(token);
    } catch (e) {
      print("TOKEN ERROR: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    CustomNavigator().init(context);
    _goTo();
    return Scaffold(
      backgroundColor: MyColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              MyAssetIcons.logo,
              height: getUniqueH(70),
              width: getUniqueW(70),
            ),
            MySizedBox(height: 20.0),
            MyTextSemibold(text: 'SmartFarm', color: MyColors.white),
          ],
        ),
      ),
    );
  }

  void _goTo() {
    Timer(const Duration(milliseconds: 400), () {
      CustomNavigator()
          .pushReplacement(isValid ? SignInView() : BodyPageView());
    });
  }
}
