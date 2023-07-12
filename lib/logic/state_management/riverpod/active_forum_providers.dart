import 'dart:convert';
import 'dart:developer';

import 'package:flutter_neraca_ruang/data/models/diskusi_response/diskusi_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

import '../../../core/consts/hive_const.dart';
import '../../../core/consts/urls.dart';
import '../../../data/models/auth_response/auth_response.dart';
import '../../../di.dart';
import '../../../presentation/widgets/my_toast.dart';
part 'active_forum_providers.g.dart';

final enableKirimButtonUsulanDiskusi = StateProvider<bool>((ref) {
  return false;
});

@riverpod
class ActiveForums extends _$ActiveForums {
  @override
  FutureOr<List<DiskusiModel>> build() async {
    return _fetchForumList();
  }

  Future<List<DiskusiModel>> _fetchForumList() async {
    try {
      String token =
          "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJuZXJhY2FydWFuZy1wb3J0YWwiLCJpYXQiOjE2ODMyOTIzNTZ9.BN1wbCp2HTxXVwmz9QtQXscHzv5INWPO6n5xTZDTDhc";
      var url = Uri.https(baseUrl, getListActiveDiskusi);

      // final json = await http.get(url);
      final response = await http.get(url, headers: {
        'Authorization': token,
        'Accept': 'application/json',
      });
      log("forum list response: ${response.body}");
      var listBoxKey = sl<Box<String>>();

      if (response.statusCode == 200) {
        return DiskusiResponse.fromJson(jsonDecode(response.body))
                .data
                ?.data
                ?.map((e) {
              if (listBoxKey.containsKey(e.threadSlug)) {
                return e.copyWith(localLike: true);
              }
              return e;
            }).toList() ??
            [];
      }
    } catch (e) {
      return [];
    }
    return [];
  }

  Future<void> likeDiskusi(DiskusiModel content) async {
    /// kirim query untuk like content
    /// TODO perbaiki nih token yang berantakan di mana mana ini!!!
    String token =
        "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJuZXJhY2FydWFuZy1wb3J0YWwiLCJpYXQiOjE2ODMyOTIzNTZ9.BN1wbCp2HTxXVwmz9QtQXscHzv5INWPO6n5xTZDTDhc";

    /// simpan data ke persistence / box
    /// FIXME, simpan ke box yg berbeda
    var box = sl<Box<String>>();
    await box.put(content.threadSlug ?? "", content.threadSlug ?? "");
    try {
      var url =
          Uri.https(baseUrl, "$updateForumLikeUrl/${content.threadSlug ?? ""}");

      // final json = await http.get(url);
      final response = await http.patch(url, headers: {
        'Authorization': token,
        'Accept': 'application/json',
      });
      print("URL like content contentProvider: $url");
      log("result JSON: ${jsonDecode(response.body)}");
      if (response.statusCode != 200) throw Exception();

      /// ubah dulu secara lokal
      state = AsyncValue.data([
        for (final (stateContent as DiskusiModel) in state.value ?? [])
          if (stateContent.threadId == content.threadId)
            stateContent.copyWith(
                localLike: true, totalLike: (stateContent.totalLike ?? 0) + 1)
          else
            stateContent,
      ]);
    } catch (_) {
      state = AsyncValue.error(Error(), StackTrace.current);
      box.delete(content.threadSlug ?? "");
      // throw Exception()
    }
  }

  Future<void> markDiskusiAsRed(String diskusiSlug) async {
    // state = const AsyncValue.loading();

    state = AsyncValue.data([
      for (final (stateContent as DiskusiModel) in state.value ?? [])
        if (stateContent.threadSlug == diskusiSlug)
          stateContent.copyWith(totalRead: (stateContent.totalRead ?? 0) + 1)
        else
          stateContent,
    ]);
    String token =
        "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJuZXJhY2FydWFuZy1wb3J0YWwiLCJpYXQiOjE2ODMyOTIzNTZ9.BN1wbCp2HTxXVwmz9QtQXscHzv5INWPO6n5xTZDTDhc";

    try {
      var url = Uri.https(baseUrl, "$getListActiveDiskusi/$diskusiSlug");

      // final json = await http.get(url);
      final response = await http.get(url, headers: {
        'Authorization': token,
        'Accept': 'application/json',
      });
      print("URL mark as read latest list from contentProvider: $url");
      log("result JSON: ${jsonDecode(response.body)}");
      if (response.statusCode != 200) throw Exception();
    } catch (_) {
      state = AsyncValue.error(Error(), StackTrace.current);
      print("There is an Error");
    }
  }

  Future<void> markDiskusiCommentAsRed(
    String diskusiSlug, {
    int? replyId,
    Function()? onSuccess,
    Function(String)? onFailed,
  }) async {
    // state = const AsyncValue.loading();

    state = AsyncValue.data([
      for (final (stateContent as DiskusiModel) in state.value ?? [])
        if (stateContent.threadSlug == diskusiSlug)
          stateContent.copyWith(totalRead: (stateContent.totalRead ?? 0) + 1)
        else
          stateContent,
    ]);
    String token =
        "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJuZXJhY2FydWFuZy1wb3J0YWwiLCJpYXQiOjE2ODMyOTIzNTZ9.BN1wbCp2HTxXVwmz9QtQXscHzv5INWPO6n5xTZDTDhc";

    try {
      var url = Uri.https(baseUrl, "$updateReadsForumCommentUrl");

      // final json = await http.get(url);
      var bodyParams = {
        "thread_slug": diskusiSlug,
      };
      if (replyId != null && replyId != 0) {
        bodyParams["reply_id"] = replyId.toString();
      }
      final response = await http.patch(
        url,
        headers: {
          'Authorization': token,
          'Accept': 'application/json',
        },
        body: bodyParams,
      );
      print("URL mark as read forum coment from active forum provider: $url");
      log("result JSON: ${jsonDecode(response.body)}");
      if (onSuccess != null) onSuccess();
      if (response.statusCode != 200) throw Exception();
    } catch (e) {
      if (onFailed != null) onFailed(e.toString());
      state = AsyncValue.error(Error(), StackTrace.current);
      print("There is an Error");
    }
  }

  Future<void> addUsulanDiskusi(
      {required String topikDiskusi,
      required String abstraksiSingkat,
      required Function() onSuccess,
      required Function(String) onFailure}) async {
    try {
      var authBox = sl<Box<AuthResponse>>();
      var dataFromBox = authBox.get(userDataKey);
      MemberData userData = dataFromBox?.data?.copyWith() ?? MemberData();
      print("dataFromBox (postComment): ${dataFromBox?.toJson()}");
      var token = "Bearer ${userData.token ?? " "}";
      // FIXME ini sharusnya pakai token user, bukan portal
      // String token =
      //     "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJuZXJhY2EtcnVhbmciLCJzdWIiOiI0MTcxMzIwMDg5ODk4OTExIiwiaWF0IjoxNjg3OTg0NzQ2LCJleHAiOjE2OTA1NzY3NDZ9.-uOeTVWqRoWCh7aJqEWg0XxKne0PR9-HH96uu7gZXwc";
      var bodyParameters = {
        "topik": topikDiskusi,
        "abstrak": abstraksiSingkat,
      };
      var url = Uri.https(
        baseUrl,
        forumUsulanPostUrl,
      );
      print("Post Usulan URL :$url");

      // final json = await http.get(url);
      final response = await http.post(url,
          headers: {
            'Authorization': "Bearer $token",
            'Accept': 'application/json',
            // "Content-Type": "application/json",
          },
          body: bodyParameters);
      log("post forum Usulan resp code: ${response.statusCode}");
      log("post forum Usulan resp body: ${response.body}");
      if (response.statusCode != 201) {
        onFailure(response.body);
        throw Error();
      } else {
        myToast("Sukses Menambahkan Usulan");
        onSuccess();
      }
    } catch (e) {
      log("error in forum usulan: ${e.toString()}");
      onFailure(e.toString());

      AsyncValue.error(Error(), StackTrace.current);
    }
  }

  //
  // Future<void> addShareCount(String slug) async {
  //   /// TODO perbaiki nih token yang berantakan di mana mana ini!!!
  //   String token =
  //       "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJuZXJhY2FydWFuZy1wb3J0YWwiLCJpYXQiOjE2ODMyOTIzNTZ9.BN1wbCp2HTxXVwmz9QtQXscHzv5INWPO6n5xTZDTDhc";
  //
  //   try {
  //     var url = Uri.https(baseUrl, "$addSharedCountUrl/$slug");
  //
  //     // final json = await http.get(url);
  //     final response = await http.patch(url, headers: {
  //       'Authorization': token,
  //       'Accept': 'application/json',
  //     });
  //     print("URL like content contentProvider: $url");
  //     log("result JSON: ${jsonDecode(response.body)}");
  //     if (response.statusCode != 200) throw Exception();
  //     // myToast("Update Shared Count Success");
  //   } catch (_) {
  //     state = AsyncValue.error(Error(), StackTrace.current);
  //     // throw Exception()
  //   }
  // }
}
