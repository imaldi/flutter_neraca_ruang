import 'dart:convert';

import 'package:flutter_neraca_ruang/data/models/login_response/login_response.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/dashboard_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;

import '../../../core/consts/urls.dart';

final hiveUserTokenProvider = StateProvider<String>(((ref) {
  var box = Hive.box('authbox');
  return box.get("user_data")?.data?.token ?? "";
}));

final authRepoProvider = Provider((ref) => Repository(ref));

final usernameProvider = StateProvider((ref) => "");
final emailProvider = StateProvider((ref) => "");
final passwordProvider = StateProvider((ref) => "");
final loggingInProvider = FutureProvider((ref) async {
  var username = ref.watch(usernameProvider);
  var password = ref.watch(passwordProvider);
  var repo = ref.watch(authRepoProvider);
  var isLogin = await repo.login(password, username: username);
  return isLogin;
});
final isLoginProvider = StateProvider((ref) {
  // var loggingInResult = ref.watch(loggingInProvider);
  var box = Hive.box<LoginResponse>('authbox');
  var isLoggedIn = box.get("user_data") != null;

  return isLoggedIn;
});

class Repository {
  Repository(this.ref);

  final Ref ref;

  Future<bool> login(String password, {String? username, String? email}) async {
    // var token = ref.watch(hiveUserTokenProvider);
    var username = ref.watch(usernameProvider);
    var email = ref.watch(emailProvider);
    var password = ref.watch(passwordProvider);

    Map<String, String> reqBody = {};

    ref.listen(usernameProvider, (oldV, newV) {
      /// Ini maksudnya ketika tagsId berubah (klik logo kota di halaman detail), maka reset kotaId dan selectedContentId
      if ((oldV != newV) && (newV.isNotEmpty)) {
        ref.read(emailProvider.notifier).update((state) => "");
        reqBody = {
          "type": username,
          "username": newV,
          "password": password,
        };
      }
    });
    ref.listen(emailProvider, (oldV, newV) {
      /// Ini maksudnya ketika kotaId berubah (klik logo kota di halaman detail), maka reset tagsId dan selectedContentId
      if ((oldV != newV) && (newV.isNotEmpty)) {
        ref.read(usernameProvider.notifier).update((state) => "");
        reqBody = {
          "type": email,
          "email": newV,
          "password": password,
        };
      }
    });

    try {
      print("repo.login is called");
      var response = await http
          .post(Uri.https(baseUrl, "/api/auth/login"), body: reqBody, headers: {
        // 'Authorization': token,
        'Accept': 'application/json',
      });
      if (response.statusCode == 201) {
        var box = Hive.box('authbox');
        box.put("user_data", LoginResponse.fromJson(jsonDecode(response.body)));
        print("response data: ${box.get("user_data").toString()}");
        return true;
      }
      return false;
    } on TypeError {
      print("error type");
      throw Exception();
      // Do something
    } catch (e) {
      print("ada error: $e");
      throw Exception();
      // do something again when error happens
    }
  }

  logout() {}
}
