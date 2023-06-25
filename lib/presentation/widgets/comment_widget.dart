import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/colors.dart';
import 'package:flutter_neraca_ruang/data/models/dashboard_response/dashboard_response.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/all_content_list_providers.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/comment_providers.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/rounded_text_form_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/sizes.dart';
import '../../di.dart';
import '../../logic/state_management/riverpod/async_state_auth_providers.dart';
import '../../logic/state_management/riverpod/dashboard_providers.dart';
import 'my_scrollable_nested_widget.dart';

class CommentWidget extends ConsumerStatefulWidget {
  const CommentWidget({Key? key}) : super(key: key);

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

    var commentList = ref.watch(commentsProvider);
    final TextEditingController textEditingController = TextEditingController();

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
                      color: Color(primaryColor),
                      fontSize: huge,
                      fontWeight: FontWeight.bold)),
              Divider(
                thickness: 2,
              ),
              commentList.when(
                  data: (data) {
                    if (data.length > 0) {
                      return Container(
                        height: 200,
                        child: MyScrollableNestedWidget(
                          controller: sl<ScrollController>(),
                          child: ListView.builder(
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
                                          "${data[i].komentar}",
                                          style: TextStyle(fontSize: medium),
                                        ),
                                        Text(
                                          "by: ${data[i].username}",
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
                  loading: () => Center(child: CircularProgressIndicator())),
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
                                backgroundColor: Color(primaryColor),
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
                              }, onFailure: (errorMessage) {
                                print("response body: $errorMessage");
                              });
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
