import 'dart:convert';
import 'dart:developer';

import 'package:flutter_neraca_ruang/core/dummy_json/fake_comment_response.dart';
import 'package:flutter_neraca_ruang/core/helper_functions/json_reader.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/my_toast.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;

import '../../../core/consts/hive_const.dart';
import '../../../core/consts/urls.dart';
import '../../../data/models/auth_response/auth_response.dart';
import '../../../data/models/comment_response/comment_response.dart';
import '../../../di.dart';
import 'dashboard_providers.dart';
part 'comment_providers.g.dart';

@riverpod
class Comments extends _$Comments {
  @override
  FutureOr<List<CommentModel>> build() async {
    return [];
    // return await _fetchDummyData();
  }

  Future<List<CommentModel>> _fetchDummyData() async {
    try {
      // var jsonStringFromFile = await readJsonFile(
      //     '../../../core/dummy_json/fake_comment_response.json');
      var jsonResult =
          CommentResponse.fromJson(dummyCommentResponse).data ?? [];
      return jsonResult;
    } catch (e) {
      log("Error message: ${e.toString()}");
      throw e;
    }
  }

  Future<void> fetchCommentFromAPI() async {
    state = const AsyncValue.loading();
    String selectedSlug = ref.watch(selectedContentSlugProvider);
    var authBox = sl<Box<AuthResponse>>();
    var dataFromBox = authBox.get(userDataKey);
    print("dataFromBox (change password): ${dataFromBox?.toJson()}");

    String token = "Bearer ${dataFromBox?.data?.token ?? ""}";

    var url = Uri.https(baseUrl, "$commentListUrl/$selectedSlug");

    print("url fetch comment: $url");

    try {
      final response = await http.get(url, headers: {
        'Authorization': token,
        'Accept': 'application/json',
      });
      log("fetch comment resp code: ${response.statusCode}");
      log("fetch comment resp body: ${response.body}");
      if (response.statusCode == 200) {
        state = await AsyncValue.guard(() async =>
            CommentResponse.fromJson(jsonDecode(response.body)).data ??
            <CommentModel>[]);
      } else {
        throw Error();
      }
    } catch (e) {
      log("error in comment: ${e.toString()}");

      state = AsyncValue.error(Error(), StackTrace.current);
    }
    // return [];
  }

  Future<void> postCommentAsMember(String slug, String komentar,
      {required Function() onSuccess,
      required Function(String) onFailure}) async {
    try {
      var authBox = sl<Box<AuthResponse>>();
      var dataFromBox = authBox.get(userDataKey);
      MemberData userData =
          dataFromBox?.data?.copyWith(token: "") ?? MemberData();
      print("dataFromBox (postComment): ${dataFromBox?.toJson()}");
      var token = userData.token ?? "";
      var bodyParameters = {
        "slug": slug,
        "komentar": komentar,
        "username": userData.members?.username ?? "",
        "email": userData.members?.email ?? "",
        "nik": "1592121300980200",
      };
      var url = Uri.https(
        baseUrl,
        postCommentUrl,
      );
      print("Post Comment URL :$url");

      // final json = await http.get(url);
      final response = await http.post(url,
          headers: {
            'Authorization': "Bearer $token",
            'Accept': 'application/json',
            "Content-Type": "application/json",
          },
          body: jsonEncode(bodyParameters));
      log("post comment resp code: ${response.statusCode}");
      log("post comment resp body: ${response.body}");
      if (response.statusCode != 201) {
        onFailure(response.body);
        throw Error();
      } else {
        myToast("Sukses Menambahkan Komentar");
        onSuccess();
      }
    } catch (e) {
      log("error in comment: ${e.toString()}");
      AsyncValue.error(Error(), StackTrace.current);
    }
  }
}
