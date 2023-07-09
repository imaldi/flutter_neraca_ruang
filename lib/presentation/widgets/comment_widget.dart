import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/colors.dart';
import 'package:flutter_neraca_ruang/data/models/dashboard_response/dashboard_response.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/all_content_list_providers.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/comment_providers.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/rounded_text_form_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/sizes.dart';
import '../../data/models/comment_response/comment_response.dart';
import '../../data/models/forum_comment_response/forum_comment_response.dart';
import '../../di.dart';
import '../../logic/state_management/riverpod/async_state_auth_providers.dart';
import '../../logic/state_management/riverpod/dashboard_providers.dart';
import '../../logic/state_management/riverpod/forum_comment_providers.dart';
import 'forum_nested_comment_listview.dart';
import 'my_scrollable_nested_widget.dart';

class CommentWidget extends ConsumerStatefulWidget {
  final bool isForum;
  final bool isGreenPage;
  const CommentWidget(
      {this.isForum = false, this.isGreenPage = false, Key? key})
      : super(key: key);

  @override
  ConsumerState<CommentWidget> createState() => _CommentWidgetState();
}

class _CommentWidgetState extends ConsumerState<CommentWidget> {
  // @override
  // void dispose() {
  //   ref.invalidate(commentsProvider);
  //   ref.invalidate(contentsProvider);
  //   ref.invalidate(selectedContentIdProvider);
  //
  //   super.dispose();
  // }
  final textFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    String selectedSlug = ref.watch(selectedContentSlugProvider);
    var isLogin = ref.watch(authStatusProvider).value != null;

    var commentList =
        ref.watch(widget.isForum ? forumCommentsProvider : commentsProvider);
    final TextEditingController textEditingController = TextEditingController();
    var widgetColor = widget.isGreenPage ? greenModeColor : primaryColor;

    return Container(
      width: MediaQuery.of(context).size.width,
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(normal),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Komentar",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color(widgetColor),
                      fontSize: huge,
                      fontWeight: FontWeight.bold)),
              Divider(
                thickness: 2,
              ),
              commentList.when(
                  data: (data) {
                    // print(
                    //     "Data komen: ${data.toString()} (${data.runtimeType})");
                    if (data.length > 0) {
                      // return Text("Data komen: ${data.toString()}");
                      return Container(
                        height: 200,
                        child: MyScrollableNestedWidget(
                          child: widget.isForum
                              ? ForumNestedCommentListview(
                                  data as List<ForumCommentModel>)
                              : ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: data.length,
                                  // physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (c, i) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "${(data[i] as CommentModel).komentar}",
                                              style:
                                                  TextStyle(fontSize: medium),
                                            ),
                                            Text(
                                              "by: ${(data[i] as CommentModel).username ?? "-"}",
                                              style: TextStyle(
                                                  color: Color(primaryColor)),
                                            ),
                                          ]),
                                    );
                                  }),
                        ),
                      );
                    }
                    return Center(
                      child: Text("- Belum Ada Komentar -"),
                    );
                  },
                  error: (o, st) => Center(
                        child: Text("There is an error: $st"),
                      ),
                  loading: () => Center(
                          child: CircularProgressIndicator(
                        color: Color(widgetColor),
                      ))),
              Visibility(
                visible: isLogin,
                child: Column(
                  children: [
                    RoundedTextFormField(
                      key: textFormKey,
                      hint: "Komentar di sini",
                      maxLines: 3,
                      controller: textEditingController,
                      validator: (val) {
                        if ((val?.length ?? 0) < 28) {
                          return "Komentar minimal 28 karakter";
                        }
                        return null;
                      },
                      // onChanged: (val) {
                      // },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(widgetColor),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(huge))),
                            onPressed: () {
                              textEditingController.text =
                                  textEditingController.text.trim();
                              textEditingController.selection =
                                  TextSelection.fromPosition(TextPosition(
                                      offset:
                                          textEditingController.text.length));

                              // if (textFormKey.currentState != null &&
                              //     textFormKey.currentState!.validate()) {
                              if (widget.isForum) {
                                ref
                                    .read(forumCommentsProvider.notifier)
                                    .postCommentAsMember(selectedSlug,
                                        textEditingController.text.trim(),
                                        onSuccess: () {
                                  /// lol kocak
                                  textEditingController.text =
                                      "                            ";
                                  textEditingController.selection =
                                      TextSelection.fromPosition(
                                          TextPosition(offset: 0));
                                  // ref
                                  //     .read(forumCommentsProvider.notifier)
                                  //     .fetchCommentFromAPI();
                                }, onFailure: (errorMessage) {
                                  print("response body: $errorMessage");
                                });
                              } else {
                                ref
                                    .read(commentsProvider.notifier)
                                    .postCommentAsMember(selectedSlug,
                                        textEditingController.text.trim(),
                                        onSuccess: () {
                                  /// lol kocak
                                  textEditingController.text =
                                      "                            ";
                                  textEditingController.selection =
                                      TextSelection.fromPosition(
                                          TextPosition(offset: 0));
                                  ref
                                      .read(commentsProvider.notifier)
                                      .fetchCommentFromAPI();
                                }, onFailure: (errorMessage) {
                                  print("response body: $errorMessage");
                                });
                              }

                              // }
                            },
                            child: Text("Kirim")),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
