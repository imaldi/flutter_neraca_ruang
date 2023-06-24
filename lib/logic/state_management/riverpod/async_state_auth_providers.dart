import 'dart:convert';
import 'dart:developer';

import 'package:flutter_neraca_ruang/data/models/auth_response/auth_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

import '../../../core/consts/hive_const.dart';
import '../../../core/consts/urls.dart';
import '../../../di.dart';
part 'async_state_auth_providers.g.dart';

final usernameProvider = StateProvider((ref) => "");
final phoneNumberProvider = StateProvider((ref) => "");
final emailProvider = StateProvider((ref) => "");
final passwordProvider = StateProvider((ref) => "");
final confPasswordProvider = StateProvider((ref) => "");
final tanggalLahirProvider = StateProvider((ref) => "");
final telepon = StateProvider((ref) => "");
// final kotaKabIdProvider = StateProvider((ref) => 0);
final provinsiIdProvider = StateProvider((ref) => 0);

var registerEvent = StateProvider<bool>((ref) => false);
var loginEvent = StateProvider<bool>((ref) => false);

/// TODO, nanti pisahkn method register dan login,
/// TODO serta buat method init yg pertama2 ngambil dari box, lalu alihkam ke login page kalau null
@riverpod
class AuthStatus extends _$AuthStatus {
  @override
  FutureOr<AuthResponse?> build() async {
    return await initFromBox();
  }

  Future<AuthResponse?> initFromBox() async {
    var box = sl<Box<AuthResponse>>();
    if (box.containsKey(userDataKey)) {
      return Future.value(box.get(userDataKey));
    }
    return null;
  }

  Future<void> login({
    required String username,
    required String password,
    Function? successCallback,
    Function? failureCallback,
  }) async {
    const AsyncValue.loading();

    String token =
        "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJuZXJhY2FydWFuZy1wb3J0YWwiLCJpYXQiOjE2ODMyOTIzNTZ9.BN1wbCp2HTxXVwmz9QtQXscHzv5INWPO6n5xTZDTDhc";
    Map<String, String> bodyParameters = {};
    bodyParameters['type'] = 'username';
    if (username.isNotEmpty) {
      bodyParameters['username'] = username;
    }
    if (password.isNotEmpty) {
      bodyParameters['password'] = password;
    }

    var url = Uri.https(
      baseUrl,
      loginUrl,
    );

    // final json = await http.get(url);
    final response = await http.post(url,
        headers: {
          'Authorization': token,
          'Accept': 'application/json',
        },
        body: bodyParameters);
    print("URL login: $url");
    log("result JSON: ${jsonDecode(response.body)}");
    // log("result JSON: ${DashboardResponse.fromJson(jsonDecode(response.body)).toJson().toString()}");
    try {
      final result = AuthResponse.fromJson(jsonDecode(response.body));
      var authBox = sl<Box<AuthResponse>>();
      await authBox.put(userDataKey, result);
      var dataFromBox = authBox.get(userDataKey);
      print("dataFromBox (login): ${dataFromBox?.toJson()}");

      // state = const AsyncValue.loading();
      state = await AsyncValue.guard(() async {
        return dataFromBox;
      });
      if (successCallback != null) successCallback();
    } on TypeError {
      // state = const AsyncValue.loading();
      // state = await AsyncValue.guard(() async {
      //   return null;
      // });
      state = AsyncValue.error(TypeError, StackTrace.current);
      if (failureCallback != null) failureCallback();
    }
  }

  Future<void> logout({Function? successCallback}) async {
    state = const AsyncValue.loading();
    var box = sl<Box<AuthResponse>>();

    try {
      if (box.containsKey(userDataKey)) {
        final AuthResponse response = box.get(userDataKey) ??
            const AuthResponse(message: "There is an error");

        print("user Data before .delete(): $response");
        await box.delete(userDataKey);
        print("user Data after .delete(): ${box.get(userDataKey)}");

        state = await AsyncValue.guard(() async => null);
        if (successCallback != null) successCallback();
        // throw Exception();

        // AsyncValue.error(Error(), StackTrace.current);
        // AsyncValue.guard(() => Future.value(null));
      } else {
        state = AsyncValue.error(Error(), StackTrace.empty);
        // throw Exception();
      }
    } catch (e) {
      state = AsyncValue.error(Error(), StackTrace.empty);

      // throw Exception();
    }
  }

  Future<void> register({
    required String username,
    String fullname = "",
    String email = "",
    required String password,
    String cPassword = "",
    String tanggalLahir = "",
    int kotaId = 0,
    int provId = 0,
    String noHp = "",
    // FIXME, nanti tanyakan kejelasan field domisili di layout dan API
    String domisili = "jaksel",
    Function? successCallback,
    Function? failureCallback,
  }) async {
    const AsyncValue.loading();

    String token =
        "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJuZXJhY2FydWFuZy1wb3J0YWwiLCJpYXQiOjE2ODMyOTIzNTZ9.BN1wbCp2HTxXVwmz9QtQXscHzv5INWPO6n5xTZDTDhc";
    Map<String, String> bodyParameters = {};
    bodyParameters['type'] = 'username';
    if (username.isNotEmpty) {
      bodyParameters['username'] = username;
    }
    if (password.isNotEmpty) {
      bodyParameters['password'] = password;
    }
    if ((fullname).isNotEmpty) {
      bodyParameters['fullname'] = fullname;
    }
    if (email.isNotEmpty) {
      bodyParameters['email'] = email;
    }
    if (noHp.isNotEmpty) {
      bodyParameters['no_hp'] = noHp;
    }
    if (cPassword.isNotEmpty) {
      bodyParameters['c_password'] = cPassword;
    }
    if (tanggalLahir.isNotEmpty) {
      bodyParameters['tanggal_lahir'] = tanggalLahir;
    }

    if (domisili.isNotEmpty) {
      bodyParameters['domisili'] = domisili;
    }
    if (provId != 0) {
      bodyParameters['prov_id'] = provId.toString();
    }
    if (kotaId != 0) {
      bodyParameters['kota_id'] = kotaId.toString();
    }

    var url = Uri.https(
      baseUrl,
      registerUrl,
    );

    // final json = await http.get(url);
    final response = await http.post(url,
        headers: {
          'Authorization': token,
          'Accept': 'application/json',
        },
        body: bodyParameters);
    print("URL register: $url");
    log("result JSON: ${jsonDecode(response.body)}");
    // log("result JSON: ${DashboardResponse.fromJson(jsonDecode(response.body)).toJson().toString()}");
    try {
      final result = AuthResponse.fromJson(jsonDecode(response.body));
      var authBox = sl<Box<AuthResponse>>();
      await authBox.put(userDataKey, result);
      var dataFromBox = authBox.get(userDataKey);
      print("dataFromBox (register): ${dataFromBox?.toJson()}");

      // state = const AsyncValue.loading();
      state = await AsyncValue.guard(() async {
        return dataFromBox;
      });
      if (successCallback != null) successCallback();
    } on TypeError {
      // state = const AsyncValue.loading();
      // state = await AsyncValue.guard(() async {
      //   return null;
      // });
      state = AsyncValue.error(TypeError, StackTrace.current);
      if (failureCallback != null) failureCallback();
    }
  }
}
