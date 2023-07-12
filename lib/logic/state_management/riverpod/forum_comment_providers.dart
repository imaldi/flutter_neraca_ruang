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

final allowedToComment = StateProvider((ref) => false);

@riverpod
class ForumComments extends _$ForumComments {
  @override
  FutureOr<List<ForumCommentModel>> build() async {
    return await fetchCommentFromAPI();
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

  Future<List<ForumCommentModel>> fetchCommentFromAPI() async {
    state = const AsyncValue.loading();
    String selectedSlug = ref.watch(selectedForumSlugProvider);

    var authBox = sl<Box<AuthResponse>>();
    var dataFromBox = authBox.get(userDataKey);
    MemberData userData = dataFromBox?.data?.copyWith() ?? MemberData();
    print("dataFromBox (postComment): ${dataFromBox?.toJson()}");
    var token = "Bearer ${userData.token ?? ""}";
    var url = Uri.https(baseUrl, "$forumCommentListUrl/$selectedSlug");

    print("url fetch comment: $url");

    try {
      final response = await http.get(url, headers: {
        'Authorization': token,
        'Accept': 'application/json',
      });
      log("fetch comment forum resp code: ${response.statusCode}");
      if (response.statusCode == 200) {
        var forumCommentList =
            ForumCommentResponse.fromJson(jsonDecode(response.body))
                    .data
                    ?.data ??
                <ForumCommentModel>[];
        state = await AsyncValue.guard(() async => forumCommentList);
        log("fetch comment forum resp body: ${forumCommentList}");

        return forumCommentList;
      } else {
        throw Error();
      }
    } catch (e) {
      log("error in comment: ${e.toString()}");

      state = AsyncValue.error(Error(), StackTrace.current);
      return [];
    }
    // return [];
  }

  Future<void> likeComment(ForumCommentModel commentModel) async {
    /// kirim query untuk like content
    /// TODO perbaiki nih token yang berantakan di mana mana ini!!!
    // String token =
    //     "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJuZXJhY2FydWFuZy1wb3J0YWwiLCJpYXQiOjE2ODMyOTIzNTZ9.BN1wbCp2HTxXVwmz9QtQXscHzv5INWPO6n5xTZDTDhc";

    /// simpan data ke persistence / box
    var box = sl<Box<String>>();
    var commentBox = sl<Box<ForumCommentModel>>();
    var dataFromBox = commentBox
        .get("${commentModel.replyId ?? 0}_${commentModel.replyAt ?? "00:00"}");
    var isLiked = dataFromBox?.localLike ?? false;
    var totalLike = dataFromBox?.totalLike ?? 0;

    try {
      var url = Uri.https(baseUrl,
          "$updateLikeForumCommentUrl/${commentModel.replyId.toString() ?? ""}");

      // final json = await http.get(url);
      final response = await http.patch(url, headers: {
        // 'Authorization': token,
        'Accept': 'application/json',
      });
      print("URL like comment forum: $url");
      log("result JSON: ${jsonDecode(response.body)}");
      if (response.statusCode != 200) throw Exception();

      /// ubah juga secara lokal
      await commentBox.put(
          "${commentModel.replyId ?? 0}_${commentModel.replyAt ?? "00:00"}",
          dataFromBox?.copyWith(localLike: true, totalLike: totalLike++) ??
              ForumCommentModel());
      state = AsyncValue.data([
        for (final (stateContent as ForumCommentModel) in state.value ?? [])
          if (stateContent.replyId == commentModel.replyId)
            stateContent.copyWith(
                localLike: true, totalLike: (stateContent.totalLike ?? 0) + 1)
          else
            stateContent,
      ]);
    } catch (_) {
      state = AsyncValue.error(Error(), StackTrace.current);
      box.delete(
          "${commentModel.replyId ?? 0}_${commentModel.replyAt ?? "00:00"}");
      // throw Exception()
    }
  }

  Future<void> unlikeComment(ForumCommentModel commentModel) async {
    /// kirim query untuk like content
    /// TODO perbaiki nih token yang berantakan di mana mana ini!!!
    // String token =
    //     "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJuZXJhY2FydWFuZy1wb3J0YWwiLCJpYXQiOjE2ODMyOTIzNTZ9.BN1wbCp2HTxXVwmz9QtQXscHzv5INWPO6n5xTZDTDhc";

    /// simpan data ke persistence / box
    var box = sl<Box<String>>();
    var commentBox = sl<Box<ForumCommentModel>>();
    var dataFromBox = commentBox
        .get("${commentModel.replyId ?? 0}_${commentModel.replyAt ?? "00:00"}");
    // var isLiked = dataFromBox?.localLike ?? false;
    var totalLike = dataFromBox?.totalLike ?? 0;

    try {
      var url = Uri.https(baseUrl,
          "$updateUnlikeForumCommentUrl/${commentModel.replyId.toString() ?? ""}");

      // final json = await http.get(url);
      final response = await http.patch(url, headers: {
        // 'Authorization': token,
        'Accept': 'application/json',
      });
      print("URL unlike comment forum: $url");
      log("result JSON: ${jsonDecode(response.body)}");
      if (response.statusCode != 200) throw Exception();

      /// ubah juga secara lokal
      await commentBox.put(
          "${commentModel.replyId ?? 0}_${commentModel.replyAt ?? "00:00"}",
          dataFromBox?.copyWith(localLike: false, totalLike: totalLike--) ??
              ForumCommentModel());
      state = AsyncValue.data([
        for (final (stateContent as ForumCommentModel) in state.value ?? [])
          if (stateContent.replyId == commentModel.replyId)
            stateContent.copyWith(
                localLike: false, totalLike: (stateContent.totalLike ?? 0) - 1)
          else
            stateContent,
      ]);
    } catch (_) {
      state = AsyncValue.error(Error(), StackTrace.current);
      box.delete(
          "${commentModel.replyId ?? 0}_${commentModel.replyAt ?? "00:00"}");
      // throw Exception()
    }
  }

  Future<void> postCommentAsMember(String slug, String komentar,
      {int? replyId,
      required Function() onSuccess,
      required Function(String) onFailure}) async {
    try {
      var authBox = sl<Box<AuthResponse>>();
      var dataFromBox = authBox.get(userDataKey);
      MemberData userData = dataFromBox?.data?.copyWith() ?? MemberData();
      print("dataFromBox (postComment): ${dataFromBox?.toJson()}");
      var token = "Bearer ${userData.token ?? ""}";
      var bodyParameters = {
        "thread_slug": slug,
        "reply_content": komentar,
      };
      if (replyId != null && replyId != 0) {
        bodyParameters["reply_id"] = replyId.toString();
        // bodyParameters.remove("thread_slug");
      }
      print("bodyParams forum comment: $bodyParameters");
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
            // "Content-Type": "application/json",
          },
          body: bodyParameters);
      log("post forum comment resp code: ${response.statusCode}");
      log("post forum comment resp body: ${response.body}");
      if (response.statusCode != 201) {
        onFailure(response.body);
        throw Error();
      } else {
        ref.invalidate(selectedForumSlugProvider);
        ref.read(selectedForumSlugProvider.notifier).state = slug;
        myToast("Sukses Menambahkan Komentar");
        onSuccess();
      }
    } catch (e) {
      log("error in forum comment: ${e.toString()}");
      AsyncValue.error(Error(), StackTrace.current);
    }
  }
}
