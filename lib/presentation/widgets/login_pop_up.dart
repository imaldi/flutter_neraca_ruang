import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/register_pop_up.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/rounded_container.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/rounded_text_form_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/consts/assets.dart';
import '../../core/consts/colors.dart';
import '../../core/consts/sizes.dart';
import '../../core/consts/urls.dart';
import '../../core/helper_functions/deeplink_handler.dart';
import '../../core/router/app_router.dart';
import '../../logic/state_management/riverpod/async_state_auth_providers.dart';
import 'i_am_not_robot.dart';
import 'my_toast.dart';

class LoginPopUp extends ConsumerWidget {
  const LoginPopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var usernameController = TextEditingController(text: '');
    var passwordController = TextEditingController(text: '');
    var isAllowedToLoginV = ref.watch(isAllowedToLogin);
    return Center(
      child: IntrinsicHeight(
        child: InkWell(
          onTap: () {},
          child: Container(
            // padding: const EdgeInsets.all(huge),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(style: BorderStyle.none),
                borderRadius: BorderRadius.circular(extra)),
            child: SingleChildScrollView(
              child: IntrinsicWidth(
                child: Column(
                  children: [
                    Image.asset(iconNRAppbar),
                    Text(
                      "Selamat Datang",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    InkWell(
                      onTap: () async {
                        // myToast("Login by Gmail coming soon!");
                        // var url = Uri.http(baseUrl, "/api/auth/google");
                        var url = Uri.parse(gmailOAuthFullUrl);
                        initUniLinks(ref, context, "Log In");

                        if (!await launchUrl(url,
                            mode: LaunchMode.externalApplication)) {
                          throw Exception('Could not launch $url');
                        }
                      },
                      child: RoundedTextFormField(
                        isEnabled: false,
                        decoration: InputDecoration(
                            label: Center(
                                child: Text(
                          "Masuk Dengan Email",
                          style: TextStyle(color: Color(primaryHintColor)),
                        ))),
                        // controller: usernameController,
                      ),
                    ),
                    const Text("atau"),
                    RoundedTextFormField(
                      hint: "Nama",
                      controller: usernameController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (val) {
                        if ((val ?? "").isEmpty) return "Username Wajib di Isi";
                        return null;
                      },
                      onChanged: (val) {
                        if ((val ?? "").isNotEmpty) {
                          ref.read(isAllowedToLogin.notifier).state = true;
                        } else {
                          ref.read(isAllowedToLogin.notifier).state = false;
                        }
                      },
                    ),
                    RoundedTextFormField(
                      hint: "Kata Sandi",
                      controller: passwordController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      isObscureText: true,
                      onChanged: (val) {
                        if ((val ?? "").isNotEmpty) {
                          ref.read(isAllowedToLogin.notifier).state = true;
                        } else {
                          ref.read(isAllowedToLogin.notifier).state = false;
                        }
                      },
                      validator: (val) {
                        if ((val ?? "").isEmpty) return "Password Wajib di Isi";
                        return null;
                      },
                    ),
                    IAmNotRobot(),
                    RoundedContainer(
                      extra,
                      margin: const EdgeInsets.all(0),
                      padding: const EdgeInsets.all(0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(primaryColor),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(huge))),
                          clipBehavior: Clip.antiAlias,
                          // TODO make validation, don't let user try login when input is empty
                          onPressed:
                              // usernameController.text.isEmpty ||
                              //         passwordController.text.isEmpty
                              //     ? null
                              //     :
                              isAllowedToLoginV
                                  ? () {
                                      // ref
                                      //     .read(usernameProvider.notifier)
                                      //     .update((state) => usernameController.text);
                                      // ref
                                      //     .read(passwordProvider.notifier)
                                      //     .update((state) => passwordController.text);
                                      // ref.read(loginEvent.notifier).state = true;
                                      ref
                                          .read(authStatusProvider.notifier)
                                          .login(
                                            username: usernameController.text,
                                            password: passwordController.text,
                                            successCallback: () {
                                              myToast("Log In Success");
                                              context.router.pop();
                                            },
                                            failureCallback: () {
                                              myToast("Log In Failed");
                                            },
                                          );
                                    }
                                  : null,
                          child: Text("MASUK")),
                    ),
                    Text("Belum memiliki akun?"),
                    InkWell(
                      onTap: () async {
                        // context.router.push(const RegisterRoute());
                        await context.router.pop();

                        showDialog(
                            context: context,
                            builder: (c) {
                              return Dialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      huge), // Set the desired corner radius here
                                ),
                                child: IntrinsicHeight(
                                  child: IntrinsicWidth(
                                    child: RoundedContainer(
                                      huge,
                                      child: RegisterPopUp(),
                                    ),
                                  ),
                                ),
                              );
                            });
                      },
                      child: Text(
                        "DAFTAR",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    SizedBox(
                      height: huge,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
