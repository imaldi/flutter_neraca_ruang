import 'package:flutter_neraca_ruang/core/consts/urls.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/models/dashboard_response/dashboard_response.dart';

part 'liked_content_list.g.dart';

@riverpod
class LikedContentListProvider extends _$LikedContentListProvider {
  @override
  List<Datum> build() {
    return [];
  }

  repopulateList(List<Datum> list) {
    state = list;
  }

  void like(int contentId, {bool isLike = true, String? contentSlug}) {
    state = [
      for (final content in state)
        // we're marking only the matching todo as completed
        if ((content.id ?? 0) == contentId)
          // Once more, since our state is immutable, we need to make a copy
          // of the todo. We're using our `copyWith` method implemented before
          // to help with that.
          content.copyWith(
              totalLike: (content.totalLike ?? 0) + (isLike ? 1 : -1))
        else
          content,
    ];
  }

  void dislike(int contentId, {String? contentSlug}) {
    like(contentId, isLike: false, contentSlug: contentSlug);
  }
}
