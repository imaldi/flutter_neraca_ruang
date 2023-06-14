import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/colors.dart';
import 'package:flutter_neraca_ruang/core/consts/sizes.dart';
import 'package:flutter_neraca_ruang/core/router/app_router.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/rounded_container.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/rounded_text_form_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/assets.dart';

@RoutePage()
class LoginPage extends ConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                  child: Column(
                    children: [
                      Image.asset(iconNRAppbar),
                      Text(
                        "Selamat Datang",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: RoundedContainer(huge,
                                padding: const EdgeInsets.symmetric(
                                    vertical: normal, horizontal: huge),
                                boxDecoration: BoxDecoration(
                                    border: Border.all(
                                        color: Color(primaryColor),
                                        width: small)),
                                child: Center(
                                  child: const Text(
                                    "Masuk dengan email",
                                    style: TextStyle(fontSize: medium),
                                  ),
                                )),
                          ),
                        ],
                      ),
                      const Text("atau"),

                      /// Custom TFF
                      Row(
                        children: [
                          Expanded(
                            child: const RoundedTextFormField(
                              hint: "Nama",
                            ),
                          ),
                        ],
                      ),
                      const RoundedTextFormField(
                        hint: "Kata Sandi",
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
                                    borderRadius: BorderRadius.circular(huge))),
                            clipBehavior: Clip.antiAlias,
                            onPressed: () {},
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
    );
  }
}
