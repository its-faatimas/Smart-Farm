import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:smartfarm/core/components/exporting_packages.dart';
import 'package:smartfarm/models/myanimals_model.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  await GetStorage.init();
  await Hive.initFlutter();
  Hive.registerAdapter(MyAnimalsModelAdapter());
  Hive.registerAdapter(ImgAdapter());
  Hive.registerAdapter(FormatsAdapter());
  Hive.registerAdapter(LargeAdapter());

  runApp(const MyApp());

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Farm',
      theme: getApplicationTheme(),
      home: const SplashScreenPage(),
    );
  }
}
