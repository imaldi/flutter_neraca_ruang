import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/active_forum_providers.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/my_toast.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/rounded_text_form_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/colors.dart';
import '../../core/consts/sizes.dart';
import '../../logic/state_management/riverpod/async_state_auth_providers.dart';

class UsulanDiskusiWidget extends ConsumerStatefulWidget {
  const UsulanDiskusiWidget({Key? key}) : super(key: key);

  @override
  _UsulanDiskusiWidgetState createState() => _UsulanDiskusiWidgetState();
}

class _UsulanDiskusiWidgetState extends ConsumerState<UsulanDiskusiWidget> {
  final textFormKey = GlobalKey<FormState>();
  final TextEditingController topikCtrl = TextEditingController();
  final TextEditingController abstractCtrl = TextEditingController();
  var isShowingDetail = false;

  @override
  Widget build(BuildContext context) {
    var authData = ref.watch(authStatusProvider);
    var isLogin = authData.value != null;
    var isEnabled = ref.watch(enableKirimButtonUsulanDiskusi);

    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(medium),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                isShowingDetail = !isShowingDetail;
              });
            },
            child: Text("USULAN DISKUSI",
                style: TextStyle(
                    color: Color(primaryColor),
                    fontSize: big,
                    fontWeight: FontWeight.w500)),
          ),
          Visibility(
            visible: isShowingDetail,
            child: Column(
              children: [
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
                  onChanged: (val) {
                    ref.read(enableKirimButtonUsulanDiskusi.notifier).state =
                        val.isNotEmpty && abstractCtrl.text.isNotEmpty;
                  },
                  validator: (val) {
                    if ((val ?? "").isEmpty) {
                      return null;
                    }
                    if ((val?.length ?? 0) < 10) {
                      return "Topik minimal 10 karakter";
                    }
                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
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
                  onChanged: (val) {
                    ref.read(enableKirimButtonUsulanDiskusi.notifier).state =
                        val.isNotEmpty && topikCtrl.text.isNotEmpty;
                  },
                  validator: (val) {
                    if ((val ?? "").isEmpty) {
                      return null;
                    }
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
                        onPressed: isEnabled
                            ? isLogin
                                ? () {
                                    abstractCtrl.text =
                                        abstractCtrl.text.trim();
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
                                              myToast(
                                                  "Sukses menambahkan usulan");
                                              topikCtrl.clear();
                                              // topikCtrl.text =
                                              //     "                            ";
                                              // topikCtrl.selection =
                                              //     TextSelection.fromPosition(
                                              //         TextPosition(offset: 0));
                                              abstractCtrl.clear();
                                              // abstractCtrl.text =
                                              //     "                            ";
                                              // abstractCtrl.selection =
                                              //     TextSelection.fromPosition(
                                              //         TextPosition(offset: 0));
                                            },
                                            onFailure: (errMsg) {
                                              myToast(
                                                  "Gagal menambahkan usulan");
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
                                  }
                                : () {
                                    myToast("Silahkan Login Dulu");
                                  }
                            : null,
                        child: Text("Kirim")),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
