import 'package:flutter_neraca_ruang/data/models/diskusi_response/diskusi_response.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/forum_comment_providers.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/comment_widget.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/my_toast.dart';
import 'package:intl/intl.dart';
import 'package:share_plus/share_plus.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/colors.dart';
import 'package:flutter_neraca_ruang/core/router/app_router.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/all_content_list_providers.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/dashboard_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../core/consts/assets.dart';
import '../../core/consts/sizes.dart';
import '../../core/consts/urls.dart';
import '../../core/helper_functions/basic_will_pop_scope.dart';
import '../../core/helper_functions/menu_icon_name_chooser.dart';
import '../../core/helper_functions/route_chooser.dart';
import '../../data/models/dashboard_response/dashboard_response.dart';
import '../../logic/state_management/riverpod/active_forum_providers.dart';
import '../../logic/state_management/riverpod/async_state_auth_providers.dart';
import '../../logic/state_management/riverpod/comment_providers.dart';
import 'IconWidget.dart';
import 'package:just_the_tooltip/just_the_tooltip.dart';

class ForumContentWidget extends ConsumerWidget {
  final DiskusiModel content;
  const ForumContentWidget(this.content, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var contentId = ref.watch(selectedForumIdProvider);
    var selectedSlug = ref.watch(selectedForumSlugProvider);
    var isLiked = content.localLike ?? false;
    var isLogin = ref.watch(authStatusProvider).value != null;
    return Column(
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          child: FittedBox(
            fit: BoxFit.fitHeight,
            child: Image.network(
              "${content.threadThumbnail}",
              fit: BoxFit.cover,
              errorBuilder: (bc, o, st) {
                return Icon(
                  Icons.broken_image_outlined,
                  size: 2 * extra,
                  color: Color(primaryColor),
                );
                // Text(content.images ?? "Image not Found");
              },
            ),
          ),
        ),
        Container(
          height: 43,
          margin: const EdgeInsets.all(medium),
          child: FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FittedBox(
                  child: Row(
                    children: [
                      CircleAvatar(
                        child: Icon(
                          Icons.person,
                          size: huge,
                        ),
                        radius: huge,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${content.moderatorName}"),
                            Text("Moderator")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: huge,
                ),
                FittedBox(
                  child: Row(
                    children: [
                      CircleAvatar(
                        child: Icon(
                          Icons.person,
                          size: huge,
                        ),
                        radius: huge,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${content.coModeratorName}",
                            ),
                            Text("Co-Moderator")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(medium),
          child: Column(
            children: [
              InkWell(
                onTap: contentId != content.threadId
                    ? () {
                        ref.read(selectedForumIdProvider.notifier).state =
                            content.threadId ?? 0;
                        ref.read(selectedForumSlugProvider.notifier).state =
                            content.threadSlug ?? "";
                        // ref.invalidate(selectedForumSlugProvider);
                        ref
                            .read(activeForumsProvider.notifier)
                            .markDiskusiAsRed(content.threadSlug ?? "");
                      }
                    : null,
                child: Container(
                  margin: const EdgeInsets.only(top: normal, bottom: medium),
                  child: Text(
                    '${content.threadSubject}',
                    style: Theme.of(context).textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Text(
                /// TODO jangan lupa ganti dengan created by yg asli
                '${DateFormat(
                      "dd MMMM",
                      "id",
                    ).format(content.threadStart ?? DateTime.now()) ?? ""} - ${DateFormat("dd MMMM yyyy", "id").format(content.threadEnd ?? DateTime.now())}',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(medium),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconWidget(
                iconDibaca,
                size: huge,
              ),
              Wrap(
                children: [
                  Text("${content.totalRead ?? "0"} "),
                  const Text("Reads"),
                ],
              ),
              InkWell(
                onTap: isLiked
                    ? null
                    : () {
                        ref
                            .read(activeForumsProvider.notifier)
                            .likeDiskusi(content);
                        // This is just from like content
                        //     .read(activeForumsProvider.notifier)
                        //     .likeDiskusi(content);
                        // myToast("the slug: ${content.slug}");
                      },
                child: isLiked
                    ? Icon(
                        Icons.thumb_up,
                        color: Color(primaryColor),
                      )
                    : IconWidget(
                        iconSuka,
                        size: huge,
                      ),
              ),
              Wrap(
                children: [
                  Text("${content.totalLike ?? "0"} "),
                  Text("Likes"),
                ],
              ),
              InkWell(
                onTap: contentId != content.threadId
                    ? () async {
                        ref
                            .read(activeForumsProvider.notifier)
                            .markDiskusiCommentAsRed(content.threadSlug ?? "",
                                onSuccess: () {
                          ref.read(selectedForumIdProvider.notifier).state =
                              content.threadId ?? 0;
                          ref.read(selectedForumSlugProvider.notifier).state =
                              content.threadSlug ?? "";
                        });
                        // await ref
                        //     .read(forumCommentsProvider.notifier)
                        //     .fetchCommentFromAPI();

                        // ref
                        //     .read(contentsProvider.notifier)
                        //     .markContentAsRed(content.slug ?? "");
                      }
                    : null,
                child: IconWidget(
                  iconCommments,
                  size: huge,
                ),
              ),
              Wrap(
                children: [
                  Text("${content.totalKomentar.toString()} "),
                  Text(
                    "Comments",
                  ),
                ],
              ),
              IconWidget(
                iconTeruskan,
                size: huge,
                onTap: () async {
                  await Share.share(
                      'Neraca Ruang at: https://neracaruang.com/forum/${content.threadSlug}');
                  // .then((v) => );
                  ref
                      .read(contentsProvider.notifier)
                      .addShareCount(content.threadSlug ?? "");
                },
              ),
            ]
                .map((e) => Expanded(
                      child: e,
                    ))
                .toList(),
          ),
        ),
        Visibility(
            visible: contentId == content.threadId && selectedSlug.isNotEmpty,
            child: CommentWidget(isForum: true)),
        SizedBox(height: huge),
      ],
    );
  }
}
