import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_storage/get_storage.dart';

class ServiceAuth {
  static Future<bool> signInUser(String email, String password) async {
    try {
      Response res = await Dio()
          .post(dotenv.env['API_ADDRESS'].toString() + '/auth/local', data: {
        "identifier": email,
        "password": password,
      });
      if (res.statusCode == 200) {
        await GetStorage().write('token', res.data['jwt']);
        await GetStorage().write('phone', res.data['user']['phone']);
        await GetStorage().write('username', res.data['user']['username']);
        await GetStorage().write('id', res.data['user']['id']);

        print("TOKEN: ${res.data['jwt']}");
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print("SERVICE AUTH SIGN IN ERROR: $e");
    }
    return false;
  }
}
