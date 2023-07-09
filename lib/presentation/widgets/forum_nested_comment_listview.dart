import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/data/models/forum_comment_response/forum_comment_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../core/consts/colors.dart';
import '../../core/consts/sizes.dart';

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

                  subtitle: Text(
                    currentReply?.replyContent ?? "",
                    style: TextStyle(color: Color(primaryTextColor)),
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
