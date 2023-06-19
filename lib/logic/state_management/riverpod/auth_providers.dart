import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;

import '../../../core/consts/hive_const.dart';
import '../../../core/consts/urls.dart';
import '../../../data/models/auth_response/auth_response.dart';
import '../../../data/models/login_response_deprecated/login_response.dart';
import '../../../di.dart';
import 'async_state_auth_providers.dart';

/// deprecated, use authStatusProvider
final hiveUserTokenProvider = StateProvider<String>(((ref) {
  var box = sl<Box<LoginResponse>>();
  return box.get(userDataKey)?.data?.token ?? "";
}));

final authRepoProvider = Provider((ref) => AuthRepository(ref));

// final loggingInProvider = FutureProvider((ref) async {
//   var username = ref.watch(usernameProvider);
//   var password = ref.watch(passwordProvider);
//   var repo = ref.watch(authRepoProvider);
//   var isLogin = await repo.login(password, username: username);
//   print("isLoggingIn state: $isLogin");
//   return isLogin;
// });

final isRegisteredStateProvider = StateProvider<bool>((ref) {
  return false;
});

final registeringEventStateProvider = StateProvider<bool>((ref) {
  return false;
});
// final isLoginProvider = StateProvider((ref) {
//   // var loggingInResult = ref.watch(loggingInProvider);
//   var box = sl<Box<LoginResponse>>();
//
//   var loginRespononse = box.get(userDataKey);
//   var isLoggedIn = loginRespononse != null;
//   print("box.get(userDataKey): $loginRespononse");
//   print("isLoggedIn: $isLoggedIn");
//
//   return isLoggedIn;
// });

final userDataProvider = StateProvider.family<AuthResponse, bool>((ref, param) {
  var box = sl<Box<AuthResponse>>();
  // ketika param true, maka hapus data
  if (param) {
    if (box.containsKey(userDataKey)) {
      box.clear();
      return const AuthResponse();
    } else {
      throw Exception();
    }
  }
  try {
    if (box.containsKey(userDataKey)) {
      final AuthResponse response = box.get(userDataKey) ??
          const AuthResponse(message: "There is an error");
      print("user Data From Hive: $response");

      return response;
    } else {
      throw Exception();
    }
  } catch (e) {
    return AuthResponse(message: "Ada Error: ${e.runtimeType}");
  }

  // var loginRespononse = box.get(userDataKey);
  // return loginRespononse;
});

class AuthRepository {
  AuthRepository(this.ref);

  final Ref ref;

  // Future<bool> login(String password, {String? username, String? email}) async {
  //   // var token = ref.watch(hiveUserTokenProvider);
  //   var username = ref.watch(usernameProvider);
  //   // var email = ref.watch(emailProvider);
  //   var password = ref.watch(passwordProvider);
  //
  //   Map<String, String> reqBody = {
  //     "type": "username",
  //     "username": username,
  //     "password": password,
  //   };
  //
  //   /// Sementara ignore ini dulu karena kita cuma fokus ke usename saja dulu
  //   // ref.listen(usernameProvider, (oldV, newV) {
  //   //   /// Ini maksudnya ketika tagsId berubah (klik logo kota di halaman detail), maka reset kotaId dan selectedContentId
  //   //   if ((oldV != newV) && (newV.isNotEmpty)) {
  //   //     ref.read(emailProvider.notifier).update((state) => "");
  //   //     reqBody = {
  //   //       "type": username,
  //   //       "username": newV,
  //   //       "password": password,
  //   //     };
  //   //   }
  //   // });
  //   // ref.listen(emailProvider, (oldV, newV) {
  //   //   /// Ini maksudnya ketika kotaId berubah (klik logo kota di halaman detail), maka reset tagsId dan selectedContentId
  //   //   if ((oldV != newV) && (newV.isNotEmpty)) {
  //   //     ref.read(usernameProvider.notifier).update((state) => "");
  //   //     reqBody = {
  //   //       "type": email,
  //   //       "email": newV,
  //   //       "password": password,
  //   //     };
  //   //   }
  //   // });
  //
  //   try {
  //     print("repo.login is called");
  //     var response = await http
  //         .post(Uri.https(baseUrl, "/api/auth/login"), body: reqBody, headers: {
  //       // 'Authorization': token,
  //       'Accept': 'application/json',
  //     });
  //     if (response.statusCode == 201) {
  //       print("login code response: ${response.statusCode}");
  //       var responseContent = LoginResponse.fromJson(jsonDecode(response.body));
  //       print("response data: ${responseContent}");
  //       var authBox = sl<Box<LoginResponse>>();
  //       await authBox.put(userDataKey, responseContent);
  //       var dataFromBox = authBox.get(userDataKey);
  //       print("dataFromBox: $dataFromBox");
  //       return dataFromBox != null;
  //       // return await asyncBox;
  //       //     .when(
  //       //   data: (box) {
  //       //     box.put(userDataKey, responseContent);
  //       //     print("response data: ${box.get(userDataKey).toString()}");
  //       //     return Future.value(box.get(userDataKey) != null);
  //       //   },
  //       //   error: (err, stack) => Future.value(false),
  //       //   loading: () => Future.value(false),
  //       // );
  //     }
  //     return false;
  //   } on TypeError {
  //     print("error type");
  //     throw Exception();
  //     // Do something
  //   } catch (e) {
  //     print("ada error: $e");
  //     throw Exception();
  //     // do something again when error happens
  //   }
  // }

  Future<bool> register(String password,
      {String? username, String? email}) async {
    // var token = ref.watch(hiveUserTokenProvider);
    var username = ref.watch(usernameProvider);
    // var email = ref.watch(emailProvider);
    var password = ref.watch(passwordProvider);

    var randomEmail = "abc1@gmail.com";
    var randomPhoneNumber = "083838432343";

    Map<String, String> reqBody = {
      "username": "4171320089811119",
      "fullname": "xxx",
      "email": "{{$randomEmail}}",
      "no_hp": "{{$randomPhoneNumber}}",
      "tanggal_lahir": "1999-11-11",
      "propinsi_id": "1",
      "kota_id": "1",
      "password": "12345678",
      "c_password": "12345678",
      "domisili": "PMB"
    };

    /// Sementara ignore ini dulu karena kita cuma fokus ke usename saja dulu
    // ref.listen(usernameProvider, (oldV, newV) {
    //   /// Ini maksudnya ketika tagsId berubah (klik logo kota di halaman detail), maka reset kotaId dan selectedContentId
    //   if ((oldV != newV) && (newV.isNotEmpty)) {
    //     ref.read(emailProvider.notifier).update((state) => "");
    //     reqBody = {
    //       "type": username,
    //       "username": newV,
    //       "password": password,
    //     };
    //   }
    // });
    // ref.listen(emailProvider, (oldV, newV) {
    //   /// Ini maksudnya ketika kotaId berubah (klik logo kota di halaman detail), maka reset tagsId dan selectedContentId
    //   if ((oldV != newV) && (newV.isNotEmpty)) {
    //     ref.read(usernameProvider.notifier).update((state) => "");
    //     reqBody = {
    //       "type": email,
    //       "email": newV,
    //       "password": password,
    //     };
    //   }
    // });

    try {
      print("repo.login is called");
      var response = await http
          .post(Uri.https(baseUrl, "/api/auth/login"), body: reqBody, headers: {
        // 'Authorization': token,
        'Accept': 'application/json',
      });
      if (response.statusCode == 201) {
        print("login code response: ${response.statusCode}");
        var responseContent = LoginResponse.fromJson(jsonDecode(response.body));
        print("response data: ${responseContent}");
        var authBox = sl<Box<LoginResponse>>();
        await authBox.put(userDataKey, responseContent);
        var dataFromBox = authBox.get(userDataKey);
        print("dataFromBox: $dataFromBox");
        return dataFromBox != null;
        // return await asyncBox;
        //     .when(
        //   data: (box) {
        //     box.put(userDataKey, responseContent);
        //     print("response data: ${box.get(userDataKey).toString()}");
        //     return Future.value(box.get(userDataKey) != null);
        //   },
        //   error: (err, stack) => Future.value(false),
        //   loading: () => Future.value(false),
        // );
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
