import 'dart:convert';
import 'dart:developer';

import 'package:flutter_neraca_ruang/data/models/diskusi_response/diskusi_response.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

import '../../../core/consts/urls.dart';
import '../../../di.dart';
part 'active_forum_providers.g.dart';

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
      if (response.statusCode == 200) {
        return DiskusiResponse.fromJson(jsonDecode(response.body)).data?.data ??
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
          Uri.https(baseUrl, "$updateLikeUrl/${content.threadSlug ?? ""}");

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

  Future<void> postUsulanDiskusi(DiskusiModel model) async {}

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
