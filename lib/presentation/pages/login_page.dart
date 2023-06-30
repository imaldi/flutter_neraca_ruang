import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/colors.dart';
import 'package:flutter_neraca_ruang/core/consts/sizes.dart';
import 'package:flutter_neraca_ruang/core/consts/urls.dart';
import 'package:flutter_neraca_ruang/core/router/app_router.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/my_toast.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/rounded_container.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/rounded_text_form_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/consts/assets.dart';
import '../../logic/state_management/riverpod/async_state_auth_providers.dart';

@RoutePage()
class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  var usernameController = TextEditingController(text: '4171320089898911');
  var passwordController = TextEditingController(text: 'asdf_123');
  // var usernameController = TextEditingController(text: '');
  // var passwordController = TextEditingController(text: '');
  // var isLoginListener = ref

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(color: Color(primaryHintColor));
    var callbackUrl = ref.watch(callbackLinkProvider);

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.grey[100],
          padding: const EdgeInsets.all(medium),
          child: Center(
            child: IntrinsicHeight(
              child: Container(
                padding: const EdgeInsets.all(huge),
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
                            var url = Uri.http(baseUrl, "/api/auth/google");
                            if (!await launchUrl(url,
                                mode: LaunchMode.externalApplication)) {
                              throw Exception('Could not launch $url');
                            }
                          },
                          child: RoundedTextFormField(
                            isEnabled: false,
                            decoration: InputDecoration(
                                label:
                                    Center(child: Text("Masuk Dengan Email"))),
                            // controller: usernameController,
                          ),
                        ),
                        const Text("atau"),
                        RoundedTextFormField(
                          hint: "Nama",
                          controller: usernameController,
                        ),
                        RoundedTextFormField(
                          hint: "Kata Sandi",
                          controller: passwordController,
                        ),
                        Container(
                          color: Colors.grey[100],
                          child: Text("Saya Bukan Robot"),
                        ),
                        RoundedContainer(
                          extra,
                          margin: const EdgeInsets.all(0),
                          padding: const EdgeInsets.all(0),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(primaryColor),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(huge))),
                              clipBehavior: Clip.antiAlias,
                              onPressed: () {
                                // ref
                                //     .read(usernameProvider.notifier)
                                //     .update((state) => usernameController.text);
                                // ref
                                //     .read(passwordProvider.notifier)
                                //     .update((state) => passwordController.text);
                                // ref.read(loginEvent.notifier).state = true;
                                ref.read(authStatusProvider.notifier).login(
                                      username: usernameController.text,
                                      password: passwordController.text,
                                      successCallback: () {
                                        myToast("Log In Success");
                                        context.router
                                            .replace(const LandingRoute());
                                      },
                                      failureCallback: () {
                                        myToast("Log In Failed");
                                      },
                                    );
                              },
                              child: Text("MASUK")),
                        ),
                        Text("Belum memiliki akun?"),
                        InkWell(
                          onTap: () {
                            context.router.push(const RegisterRoute());
                          },
                          child: Text(
                            "DAFTAR",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                        SizedBox(
                          height: huge,
                        ),
                        Text("the Link: ${callbackUrl}"),
                        // RoundedContainer(
                        //   extra,
                        //   margin: const EdgeInsets.all(0),
                        //   padding: const EdgeInsets.all(0),
                        //   child: ElevatedButton(
                        //       style: ElevatedButton.styleFrom(
                        //           backgroundColor: Color(primaryColor),
                        //           shape: RoundedRectangleBorder(
                        //               borderRadius:
                        //                   BorderRadius.circular(huge))),
                        //       clipBehavior: Clip.antiAlias,
                        //       onPressed: () {
                        //         ref.read(authStatusProvider.notifier).logout();
                        //       },
                        //       child: Text("Reset Saved Data")),
                        // ),
                        // userData.when(
                        //     data: (data) => Text("userData $data"),
                        //     error: (o, st) => const Text("User Logged Out"),
                        //     loading: () => const CircularProgressIndicator())
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
