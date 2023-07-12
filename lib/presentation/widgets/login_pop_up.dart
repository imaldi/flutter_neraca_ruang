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

class LoginPopUp extends ConsumerStatefulWidget {
  const LoginPopUp({Key? key}) : super(key: key);

  @override
  ConsumerState<LoginPopUp> createState() => _LoginPopUpState();
}

class _LoginPopUpState extends ConsumerState<LoginPopUp> {
  var _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // var username = ref.watch(nameProvider);
    // var password = ref.watch(passwordProvider);
    var usernameController = TextEditingController();
    var passwordController = TextEditingController();
    var isAllowedToLoginV = ref.watch(isAllowedToLogin);
    return Center(
      child: IntrinsicHeight(
        child: Form(
          key: _formKey,
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
                      // onEditingComplete: () {
                      //   if ((usernameController.text ?? "").isNotEmpty &&
                      //       (passwordController.text ?? "").isNotEmpty) {
                      //     ref.read(isAllowedToLogin.notifier).state = true;
                      //   } else {
                      //     ref.read(isAllowedToLogin.notifier).state = false;
                      //   }
                      //   ref.read(nameProvider.notifier).state = val;
                      //   // usernameController.selection =
                      //   //     TextSelection.fromPosition(TextPosition(
                      //   //         offset: usernameController.text.length));
                      // },
                    ),
                    RoundedTextFormField(
                      hint: "Kata Sandi",
                      controller: passwordController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      isObscureText: true,
                      // onChanged: (val) {
                      //   if (usernameController.text.isNotEmpty &&
                      //       passwordController.text.isNotEmpty) {
                      //     ref.read(isAllowedToLogin.notifier).state = true;
                      //   } else {
                      //     ref.read(isAllowedToLogin.notifier).state = false;
                      //   }
                      //   ref.read(passwordProvider.notifier).state = val;
                      //   // passwordController.text = val;
                      // },
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
                              // isAllowedToLoginV
                              //     ?
                              () {
                            // ref
                            //     .read(usernameProvider.notifier)
                            //     .update((state) => usernameController.text);
                            // ref
                            //     .read(passwordProvider.notifier)
                            //     .update((state) => passwordController.text);
                            // ref.read(loginEvent.notifier).state = true;
                            if (_formKey.currentState?.validate() ?? false) {
                              ref.read(authStatusProvider.notifier).login(
                                    username: usernameController.text,
                                    password: passwordController.text,
                                    successCallback: () {
                                      myToast("Log In Success");
                                      ref.invalidate(
                                          temporaryImNotRobotProvider);
                                      context.router.pop();
                                    },
                                    failureCallback: () {
                                      ref.invalidate(
                                          temporaryImNotRobotProvider);

                                      myToast("Log In Failed");
                                    },
                                  );
                            }
                            // else {
                            //   myToast("Gagal Validate");
                            // }
                          },
                          // : null,
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
