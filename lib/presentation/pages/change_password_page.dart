import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/router/app_router.dart';
import 'package:flutter_neraca_ruang/presentation/pages/profile_page.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/my_button.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/rounded_text_form_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/colors.dart';
import '../../core/consts/num_consts.dart';
import '../../core/consts/regex_pattern.dart';
import '../../core/consts/sizes.dart';
import '../../logic/state_management/riverpod/async_state_auth_providers.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/bottom_bar_widget.dart';
import '../widgets/main_drawer.dart';

@RoutePage()
class ChangePasswordPage extends ConsumerWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textColor = Color(primaryColor);
    final textStyle = TextStyle(color: textColor);
    final boxDecoration = BoxDecoration(border: Border.all(color: textColor));
    final newPasswordCtrl = TextEditingController();
    final confNewPasswordCtrl = TextEditingController();

    final regex = RegExp(passwordPattern);
    return DefaultTabController(
      length: mainTabLength,
      child: Scaffold(
        appBar: appBarWidget(
          context,
          ref: ref,
        ),
        drawer: MainDrawer(),
        bottomNavigationBar: BottomBarWidget(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(medium),
            child: Column(
              children: [
                Text(
                  "Ubah Kata Sandi",
                  style: textStyle.copyWith(fontSize: huge + medium),
                ),
                Text(
                    "Kata sandi Anda harus lebih dari enam karakter dan berisi kombinasi angka, huruf, dan karakter khusus (!\$@%)"),
                SizedBox(
                  height: huge,
                ),
                RoundedTextFormField(
                  isObscureText: true,
                  padding: const EdgeInsets.symmetric(vertical: medium),
                  hint: "Kata sandi saat ini",
                  borderRadius: medium,
                ),
                RoundedTextFormField(
                  isObscureText: true,
                  padding: const EdgeInsets.symmetric(vertical: medium),
                  hint: "Kata sandi baru",
                  borderRadius: medium,
                  errorMaxLines: 3,
                  controller: newPasswordCtrl,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (val) {
                    if ((val ?? "").length < 8) {
                      return "Kata Sandi minimal 8 karakter";
                    }
                    if (!regex.hasMatch(newPasswordCtrl.text)) {
                      return "Kata sandi Anda harus lebih dari delapan karakter dan berisi kombinasi angka, huruf, dan karakter khusus (:;!@#\$%^&*()_+-=,.<>/?\'\")";
                    }

                    return null;
                  },
                ),
                RoundedTextFormField(
                  isObscureText: true,
                  padding: const EdgeInsets.symmetric(vertical: medium),
                  hint: "Tulis ulang sandi",
                  borderRadius: medium,
                  controller: confNewPasswordCtrl,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (val) {
                    if ((val ?? "") != newPasswordCtrl.text) {
                      return "Password Konfirmasi tidak cocok";
                    }
                  },
                ),
                Text(
                  "Lupa kata sandi Anda?",
                  style: TextStyle(color: Colors.blue[800]),
                ),
                SizedBox(
                  height: huge,
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: normal),
                      child: MyButton(
                        radius: medium,
                        onPressed: () {
                          ref.read(authStatusProvider.notifier).changePassword(
                              oldPassword: "",
                              newPassword: newPasswordCtrl.text,
                              confPassword: confNewPasswordCtrl.text);
                          context.router.replace(const ProfileRoute());
                        },
                        child: Text("Ubah Kata Sandi"),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: normal),
                      child: MyButton(
                        isSecondary: true,
                        radius: medium,
                        onPressed: () {
                          context.router.replace(const ProfileRoute());
                        },
                        child: Text(
                          "Batal",
                          style: textStyle,
                        ),
                      ),
                    ),
                  ]
                      .map((e) => Expanded(
                            child: e,
                          ))
                      .toList(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
