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
import '../../../data/models/forum_comment_response/forum_comment_response.dart';
import '../../../di.dart';
import 'dashboard_providers.dart';
part 'forum_comment_providers.g.dart';

@riverpod
class ForumComments extends _$ForumComments {
  @override
  FutureOr<List<ForumCommentModel>> build() async {
    return [];
    // return await _fetchDummyData();
  }

  // Future<List<ForumCommentModel>> _fetchDummyData() async {
  //   try {
  //     // var jsonStringFromFile = await readJsonFile(
  //     //     '../../../core/dummy_json/fake_comment_response.json');
  //     var jsonResult =
  //         CommentResponse.fromJson(dummyCommentResponse).data ?? [];
  //     return jsonResult;
  //   } catch (e) {
  //     log("Error message: ${e.toString()}");
  //     throw e;
  //   }
  // }

  Future<void> fetchCommentFromAPI() async {
    state = const AsyncValue.loading();
    String selectedSlug = ref.watch(selectedContentSlugProvider);

    String token =
        "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJuZXJhY2FydWFuZy1wb3J0YWwiLCJpYXQiOjE2ODMyOTIzNTZ9.BN1wbCp2HTxXVwmz9QtQXscHzv5INWPO6n5xTZDTDhc";
    var url = Uri.https(baseUrl, "$forumCommentListUrl/$selectedSlug");

    print("url fetch comment: $url");

    try {
      final response = await http.get(url, headers: {
        'Authorization': token,
        'Accept': 'application/json',
      });
      log("fetch comment forum resp code: ${response.statusCode}");
      log("fetch comment forum resp body: ${response.body}");
      if (response.statusCode == 200) {
        state = await AsyncValue.guard(() async =>
            ForumCommentResponse.fromJson(jsonDecode(response.body))
                .data
                ?.data ??
            <ForumCommentModel>[]);
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
        "thread_slug": slug,
        "reply_content": komentar,
      };
      var url = Uri.https(
        baseUrl,
        forumCommentPostUrl,
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
      log("post forum comment resp code: ${response.statusCode}");
      log("post forum comment resp body: ${response.body}");
      if (response.statusCode != 201) {
        onFailure(response.body);
        throw Error();
      } else {
        myToast("Sukses Menambahkan Komentar");
        onSuccess();
      }
    } catch (e) {
      log("error in forum comment: ${e.toString()}");
      AsyncValue.error(Error(), StackTrace.current);
    }
  }
}
