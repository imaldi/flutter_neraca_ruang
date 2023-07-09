import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/data/models/forum_comment_response/forum_comment_response.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/IconWidget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../core/consts/assets.dart';
import '../../core/consts/colors.dart';
import '../../core/consts/sizes.dart';
import '../../logic/state_management/riverpod/dashboard_providers.dart';

class ForumNestedCommentListview extends ConsumerWidget {
  // final int currentIndex;
  final List<ForumCommentModel>? currentReplies;
  const ForumNestedCommentListview(this.currentReplies, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
        padding: const EdgeInsets.only(left: normal),
        shrinkWrap: true,
        // physics: NeverScrollableScrollPhysics(),
        itemCount: currentReplies?.length ?? 0,
        itemBuilder: (c, i) {
          var currentReply = currentReplies?[i];

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        left: BorderSide(
                  color: Colors.grey, // Specify the border color
                  width: 2.0, // Specify the border width
                ))),
                child: ListTile(
                  // tileColor: Colors.blue,
                  title: RichText(
                      text: TextSpan(
                          text: "",
                          style: DefaultTextStyle.of(context).style,
                          children: [
                        TextSpan(
                            text: "${currentReply?.replyBy ?? "Anonim"}",
                            style: TextStyle(
                                fontSize: medium,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                          text:
                              " | ${currentReply?.replyAt != null ? DateFormat("d MMMM yyyy hh:mm", 'id').format((currentReply?.replyAt)!) : ""}",
                        ),
                      ])),

                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        currentReply?.replyContent ?? "",
                        style: TextStyle(color: Color(primaryTextColor)),
                      ),
                      Row(
                        children: [
                          IconWidget(
                            iconSuka,
                            size: huge,
                          ),
                          Text(" ${currentReply?.totalLike ?? 0} "),
                          Text("like"),
                          SizedBox(
                            width: normal,
                          ),
                          InkWell(
                              onTap: () {
                                ref
                                    .read(
                                        selectedForumCommentIdProvider.notifier)
                                    .state = currentReply?.replyId ?? 0;
                                ref
                                        .read(
                                            selectedForumCommentReplierProvider
                                                .notifier)
                                        .state =
                                    "@${currentReply?.replyBy ?? "@Anonim"} : \"${(currentReply?.replyContent?.length ?? 0) > 20 ? "${currentReply?.replyContent?.substring(0, 20)}..." : currentReply?.replyContent}\"";
                              },
                              child: Text("reply"))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              if (currentReply?.childReply != null &&
                  (currentReply?.childReply!.isNotEmpty ?? false))
                ForumNestedCommentListview(currentReply?.childReply)
            ],
          );
        });
  }
}
