import 'dart:convert';
import 'dart:developer';

import 'package:flutter_neraca_ruang/data/models/auth_response/auth_response.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/dashboard_providers.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/my_toast.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

import '../../../core/consts/hive_const.dart';
import '../../../core/consts/urls.dart';
import '../../../di.dart';
part 'async_state_auth_providers.g.dart';

final nameProvider = StateProvider((ref) => "");
final phoneNumberProvider = StateProvider((ref) => "");
final emailProvider = StateProvider((ref) => "");
final passwordProvider = StateProvider((ref) => "");
final confPasswordProvider = StateProvider((ref) => "");
final tanggalLahirProvider = StateProvider((ref) => "");
final tanggalLahirParamProvider = StateProvider((ref) => "");
final teleponProvider = StateProvider((ref) => "");
final kodePosProvider = StateProvider((ref) => "");
// final kotaKabIdProvider = StateProvider((ref) => 0);
final provinsiIdProvider = StateProvider((ref) => 0);

var registerEvent = StateProvider<bool>((ref) => false);
var loginEvent = StateProvider<bool>((ref) => false);
var isChangePasswordSuccess = StateProvider<bool?>((ref) => null);
var callbackLinkProvider = StateProvider<String?>((ref) => null);
// var callbackResponseProvider = FutureProvider<String>((ref) async {
//   var linkCallback = ref.watch(callbackLinkProvider);
//   String token =
//       "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJuZXJhY2FydWFuZy1wb3J0YWwiLCJpYXQiOjE2ODMyOTIzNTZ9.BN1wbCp2HTxXVwmz9QtQXscHzv5INWPO6n5xTZDTDhc";
// // Map<String, String> bodyParameters = {};
// // bodyParameters['type'] = 'username';
// // if (username.isNotEmpty) {
// //   bodyParameters['username'] = username;
// // }
// // if (password.isNotEmpty) {
// //   bodyParameters['password'] = password;
// // }
//   ;
//   var url = Uri.parse(linkCallback ?? "https://neracaruang.com");
//
// // Uri.https(
// //   baseUrl,
// //   param.split("https://neracaruang.com").first,
// // );
//
// // final json = await http.get(url);
//   final response = await http.get(
//     url,
//     headers: {
//       'Authorization': token,
//       'Accept': 'application/json',
//     },
//   );
//   print("URL login gmail callbackResponseProvider: $url");
//   log("result JSON: ${jsonDecode(response.body)}");
//   return response.body;
// // log("result JSON: ${DashboardResponse.fromJson(jsonDecode(response.body)).toJson().toString()}");
// // try {
// //   // final result = AuthResponse.fromJson(jsonDecode(response.body));
// //   // var authBox = sl<Box<AuthResponse>>();
// //   // await authBox.put(userDataKey, result);
// //   // var dataFromBox = authBox.get(userDataKey);
// //   // print("dataFromBox (login): ${dataFromBox?.toJson()}");
// //
// //   // state = const AsyncValue.loading();
// //   // state = await AsyncValue.guard(() async {
// //   //   return dataFromBox;
// //   // });
// //   // if (successCallback != null) successCallback();
// // } on TypeError {
// //   myToast("Type Error");
// //   // state = const AsyncValue.loading();
// //   // state = await AsyncValue.guard(() async {
// //   //   return null;
// //   // });
// //   // state = AsyncValue.error(TypeError, StackTrace.current);
// //   // if (failureCallback != null) failureCallback();
// // }
// //   return "null";
// });

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

  Future<void> loginOAuth({
    Function? successCallback,
    Function? failureCallback,
  }) async {
    const AsyncValue.loading();
    var linkCallback = ref.watch(callbackLinkProvider);

    String token =
        "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJuZXJhY2FydWFuZy1wb3J0YWwiLCJpYXQiOjE2ODMyOTIzNTZ9.BN1wbCp2HTxXVwmz9QtQXscHzv5INWPO6n5xTZDTDhc";
    // Map<String, String> bodyParameters = {};
    // bodyParameters['type'] = 'username';
    // if (username.isNotEmpty) {
    //   bodyParameters['username'] = username;
    // }
    // if (password.isNotEmpty) {
    //   bodyParameters['password'] = password;
    // }

    var url = Uri.parse(linkCallback ?? "https://neracaruang.com");

    // Uri.https(
    //   baseUrl,
    //   param.split("https://neracaruang.com").first,
    // );

    // final json = await http.get(url);
    final response = await http.get(
      url,
      headers: {
        'Authorization': token,
        'Accept': 'application/json',
      },
    );
    print("URL login gmail: $url");
    log("result Status Code: ${response.statusCode}");
    log("result JSON: ${jsonDecode(response.body)}");
    // log("result JSON: ${DashboardResponse.fromJson(jsonDecode(response.body)).toJson().toString()}");
    try {
      final result = AuthResponse.fromJson(jsonDecode(response.body));
      var authBox = sl<Box<AuthResponse>>();
      await authBox.put(userDataKey, result);
      var dataFromBox = authBox.get(userDataKey);
      print("dataFromBox (login): ${dataFromBox?.toJson()}");

      // state = const AsyncValue.loading();
      if (response.statusCode == 201) {
        state = await AsyncValue.guard(() async {
          return dataFromBox;
        });
        if (successCallback != null) successCallback();
      }
      // if (successCallback != null) successCallback();
    } on TypeError {
      // myToast("Type Error");
      // state = const AsyncValue.loading();
      // state = await AsyncValue.guard(() async {
      //   return null;
      // });
      if (failureCallback != null) failureCallback();

      state = AsyncValue.error(TypeError, StackTrace.current);
      // if (failureCallback != null) failureCallback();
    }
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
    // String tanggalLahir = "",
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
    var tanggalLahir = ref.watch(tanggalLahirParamProvider);
    print("tanggalLahir: $tanggalLahir");
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
      bodyParameters['propinsi_id'] = provId.toString();
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
      if (response.statusCode == 201) {
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
      }

      if (response.statusCode == 422) {
        throw TypeError();
      }
    } on TypeError {
      // state = const AsyncValue.loading();
      // state = await AsyncValue.guard(() async {
      //   return null;
      // });
      state = AsyncValue.error(TypeError, StackTrace.current);
      if (failureCallback != null) failureCallback();
    }
  }

  Future<void> editMember({
    String fullname = "",
    String email = "",
    int kotaId = 0,
    int provId = 0,
    String noHp = "",
    String kodePos = "",
    Function? successCallback,
    Function? failureCallback,
  }) async {
    const AsyncValue.loading();

    Map<String, String> bodyParameters = {};
    var tanggalLahir = ref.watch(tanggalLahirParamProvider);
    var kotaId = ref.watch(kotaIdProvider);
    var provId = ref.watch(provIdProvider);
    print("tanggalLahir: $tanggalLahir");
    var authBox = sl<Box<AuthResponse>>();
    var dataFromBox = authBox.get(userDataKey);
    print("dataFromBox (update member): ${dataFromBox?.toJson()}");
    String token = "Bearer ${dataFromBox?.data?.token ?? ""}";
    // "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJuZXJhY2FydWFuZy1wb3J0YWwiLCJpYXQiOjE2ODMyOTIzNTZ9.BN1wbCp2HTxXVwmz9QtQXscHzv5INWPO6n5xTZDTDhc";

    if ((fullname).isNotEmpty) {
      bodyParameters['fullname'] = fullname;
    } else {
      bodyParameters['fullname'] = dataFromBox?.data?.members?.fullname ?? "";
    }
    if (email.isNotEmpty) {
      bodyParameters['email'] = email;
    } else {
      bodyParameters['email'] = dataFromBox?.data?.members?.email ?? "";
    }
    if (noHp.isNotEmpty) {
      bodyParameters['no_hp'] = noHp;
    } else {
      bodyParameters['no_hp'] = dataFromBox?.data?.members?.noHp ?? "";
    }

    if (noHp.isNotEmpty) {
      bodyParameters['kode_pos'] = kodePos;
    } else {
      bodyParameters['kode_pos'] = dataFromBox?.data?.members?.kodePos ?? "";
    }

    if (tanggalLahir.isNotEmpty) {
      bodyParameters['tanggal_lahir'] = tanggalLahir;
    } else {
      bodyParameters['tanggal_lahir'] =
          dataFromBox?.data?.members?.tanggalLahir ?? "";
    }

    if (provId != 0) {
      bodyParameters['propinsi_id'] = provId.toString();
    } else {
      bodyParameters['propinsi_id'] =
          dataFromBox?.data?.members?.propinsiId.toString() ?? "";
    }
    if (kotaId != 0) {
      bodyParameters['kota_id'] = kotaId.toString();
    } else {
      bodyParameters['kota_id'] =
          dataFromBox?.data?.members?.kotaId.toString() ?? "";
    }

    log("bodyParam: ${bodyParameters.toString()}");
    var url = Uri.https(
      baseUrl,
      updateMemberUrl,
    );
    try {
      // final json = await http.get(url);
      final response = await http.post(url,
          headers: {
            'Authorization': token,
            'Accept': 'application/json',
          },
          body: bodyParameters);
      print("URL update member: $url");
      log("result JSON: ${jsonDecode(response.body)}");
      // log("result JSON: ${DashboardResponse.fromJson(jsonDecode(response.body)).toJson().toString()}");

      if (response.statusCode == 201) {
        var newMemberData = dataFromBox?.data?.members?.copyWith(
          fullname: bodyParameters['fullname'],
          email: bodyParameters['email'],
          noHp: bodyParameters['no_hp'],
          kodePos: bodyParameters['kode_pos'],
          tanggalLahir: bodyParameters['tanggal_lahir'],
          propinsiId: int.tryParse(bodyParameters['propinsi_id'] ?? "0"),
          kotaId: int.tryParse(bodyParameters['kota_id'] ?? "0"),
        );
        var newData = dataFromBox?.copyWith.data?.call(members: newMemberData);
        await authBox.delete(userDataKey);
        await authBox.put(userDataKey, newData ?? AuthResponse());
        var newDataFromBox = authBox.get(userDataKey);
        log("newDataFromBox: $newDataFromBox");
        state = await AsyncValue.guard(() async {
          return newDataFromBox;
        });
        if (successCallback != null) successCallback();
      }

      if (response.statusCode == 422) {
        throw TypeError();
      }
    } on TypeError {
      state = AsyncValue.error(TypeError, StackTrace.current);
      if (failureCallback != null) failureCallback();
    }
  }

  Future<void> changePassword({
    required String oldPassword,
    required String newPassword,
    required String confPassword,
  }) async {
    var url = Uri.https(
      baseUrl,
      changePasswordUrl,
    );
    Map<String, String> bodyParameters = {
      "password": newPassword,
      "c_password": confPassword,
    };

    log("change pwd bodyParam: ${bodyParameters.toString()}");
    var authBox = sl<Box<AuthResponse>>();
    var dataFromBox = authBox.get(userDataKey);
    print("dataFromBox (change password): ${dataFromBox?.toJson()}");

    String token = "Bearer ${dataFromBox?.data?.token ?? " "}";
    // "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJuZXJhY2FydWFuZy1wb3J0YWwiLCJpYXQiOjE2ODMyOTIzNTZ9.BN1wbCp2HTxXVwmz9QtQXscHzv5INWPO6n5xTZDTDhc";

    try {
      final response = await http.post(url,
          headers: {
            'Authorization': token,
            'Accept': 'application/json',
          },
          body: bodyParameters);
      log("resp change pwd: ${response.body}");
      if (response.statusCode == 201) {
        ref.read(isChangePasswordSuccess.notifier).state = true;
        myToast("Password berhasil di ubah");
      } else {
        ref.read(isChangePasswordSuccess.notifier).state = false;
        myToast("Password gagal di ubah");
      }
    } catch (_) {
      ref.read(isChangePasswordSuccess.notifier).state = false;
      myToast("Password gagal di ubah");
    }
  }
}
