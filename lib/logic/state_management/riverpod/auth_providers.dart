import 'package:flutter_neraca_ruang/data/models/login_response/login_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;

import '../../../core/consts/urls.dart';

final hiveUserTokenProvider = StateProvider<String>(((ref) {
  var box = Hive.box('user_response');
  return box.get("user_data")?.data?.token ?? "";
}));

class Repository {
  Repository(this.ref);

  final Ref ref;

  login(String password, {String? username, String? email}) async {
    var token = ref.watch(hiveUserTokenProvider);
    try {
      var response =
          await http.post(Uri.https(baseUrl, "/api/auth/login"), body: {
        "username": "admin",
        "password": "12345678"
      }, headers: {
        'Authorization': token,
        'Accept': 'application/json',
      });
    } on TypeError {
      // Do something
    } catch (e) {
      // do something again when error happens
    }
  }
}
