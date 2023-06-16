import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/colors.dart';
import 'package:flutter_neraca_ruang/core/consts/sizes.dart';
import 'package:flutter_neraca_ruang/core/router/app_router.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/auth_providers.dart';
import 'package:flutter_neraca_ruang/presentation/pages/landing_page.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/rounded_container.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/rounded_text_form_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/assets.dart';

@RoutePage()
class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  var usernameController = TextEditingController(text: 'admin');
  var passwordController = TextEditingController(text: '12345678');
  // var usernameController = TextEditingController(text: '');
  // var passwordController = TextEditingController(text: '');
  // var isLoginListener = ref

  @override
  Widget build(BuildContext context) {
    ref.listen(loggingInProvider, (previous, next) {
      next.when(
          data: (data) {
            if (data) {
              context.router.replace(const LandingRoute());
              print("login listener called");
            }
          },
          error: (o, st) => null,
          loading: () => null);
    });
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
                        RoundedTextFormField(
                          isEnabled: false,
                          decoration: InputDecoration(
                              label: Center(child: Text("Masuk Dengan Email"))),
                          // controller: usernameController,
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
                                ref
                                    .read(usernameProvider.notifier)
                                    .update((state) => usernameController.text);
                                ref
                                    .read(passwordProvider.notifier)
                                    .update((state) => passwordController.text);
                                context.router.replace(LandingRoute());
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
