import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/active_forum_providers.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/my_toast.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/rounded_text_form_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/colors.dart';
import '../../core/consts/sizes.dart';

class UsulanDiskusiWidget extends ConsumerStatefulWidget {
  const UsulanDiskusiWidget({Key? key}) : super(key: key);

  @override
  _UsulanDiskusiWidgetState createState() => _UsulanDiskusiWidgetState();
}

class _UsulanDiskusiWidgetState extends ConsumerState<UsulanDiskusiWidget> {
  final textFormKey = GlobalKey<FormState>();
  final TextEditingController topikCtrl = TextEditingController();
  final TextEditingController abstractCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(normal),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("USULAN DISKUSI",
                  style: TextStyle(
                      color: Color(primaryColor),
                      fontSize: big,
                      fontWeight: FontWeight.w500)),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Topik Diskusi",
                  style: TextStyle(color: Color(primaryColor)),
                ),
              ),
              RoundedTextFormField(
                borderRadius: 0,
                hint: '',
                controller: topikCtrl,
                validator: (val) {
                  if ((val?.length ?? 0) < 10) {
                    return "Topik minimal 10 karakter";
                  }
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
              Visibility(
                visible: true,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Abstraksi Singkat",
                        style: TextStyle(color: Color(primaryColor)),
                      ),
                    ),
                    RoundedTextFormField(
                      key: textFormKey,
                      borderRadius: 0,
                      maxLength: 100,
                      hint: "",
                      maxLines: 3,
                      controller: abstractCtrl,
                      validator: (val) {
                        if ((val?.length ?? 0) < 20) {
                          return "Abstrak minimal 20 karakter";
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
                              abstractCtrl.text = abstractCtrl.text.trim();
                              abstractCtrl.selection =
                                  TextSelection.fromPosition(TextPosition(
                                      offset: abstractCtrl.text.length));
                              ref
                                  .read(activeForumsProvider.notifier)
                                  .addUsulanDiskusi(
                                      topikDiskusi: topikCtrl.text.trim(),
                                      abstraksiSingkat:
                                          abstractCtrl.text.trim(),
                                      onSuccess: () {
                                        myToast("Sukses menambahkan usulan");
                                        topikCtrl.text =
                                            "                            ";
                                        topikCtrl.selection =
                                            TextSelection.fromPosition(
                                                TextPosition(offset: 0));
                                        abstractCtrl.text =
                                            "                            ";
                                        abstractCtrl.selection =
                                            TextSelection.fromPosition(
                                                TextPosition(offset: 0));
                                      },
                                      onFailure: (errMsg) {
                                        myToast("Gagal menambahkan usulan");
                                      });
                              // if (textFormKey.currentState != null &&
                              //     textFormKey.currentState!.validate()) {

                              // ref
                              //     .read(commentsProvider.notifier)
                              //     .postCommentAsMember(selectedSlug,
                              //         textEditingController.text.trim(),
                              //         onSuccess: () {
                              //   /// lol kocak
                              //   textEditingController.text =
                              //       "                            ";
                              //   textEditingController.selection =
                              //       TextSelection.fromPosition(
                              //           TextPosition(offset: 0));
                              //   ref
                              //       .read(commentsProvider.notifier)
                              //       .fetchCommentFromAPI();
                              // }, onFailure: (errorMessage) {
                              //   print("response body: $errorMessage");
                              // });

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
