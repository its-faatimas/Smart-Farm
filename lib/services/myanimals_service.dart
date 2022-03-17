import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:smartfarm/models/myanimals_model.dart';

class ServiceMyAnimals {
  static late Box<MyAnimalsModel> box;
  static Future<List<MyAnimalsModel>> getMyAnimals() async {
    int id = await GetStorage().read('id');

    Response res =
        await Dio().get(dotenv.env['API_ADDRESS'].toString() + "/users/$id");
    await initHive();
    List<MyAnimalsModel> _animals = (res.data['myanimals'] as List)
        .map((e) => MyAnimalsModel.fromJson(e))
        .toList();
    await putToDB(_animals);
    return _animals;
  }

  static Future initHive() async {
    Directory dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    box = await Hive.openBox('animalss');
  }

  static Future putToDB(List<MyAnimalsModel> data) async {
    // box.add(data);
    for (MyAnimalsModel animal in data) {
      box.add(animal);
      print("ANIMAL: ${animal.name}");
    }
  }
}
