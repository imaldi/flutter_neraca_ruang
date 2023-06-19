import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/async_state_auth_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/assets.dart';
import '../../core/consts/colors.dart';
import '../../core/consts/sizes.dart';
import '../../core/router/app_router.dart';
import '../widgets/my_toast.dart';
import '../widgets/rounded_container.dart';
import '../widgets/rounded_text_form_field.dart';

@RoutePage()
class RegisterPage extends ConsumerWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final namaCtlr = TextEditingController();
    final emailCtlr = TextEditingController();
    final tanggalLahirCtlr = TextEditingController();
    final teleponCtlr = TextEditingController();
    final kotaKabCtlr = TextEditingController();
    final kodePosCtlr = TextEditingController();
    final kataSandiCtlr = TextEditingController();
    final konfKtSandiCtlr = TextEditingController();
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
                      RoundedTextFormField(
                        hint: "Nama*",
                        controller: namaCtlr,
                      ),

                      RoundedTextFormField(
                        hint: "Email*",
                        controller: emailCtlr,
                      ),

                      RoundedTextFormField(
                        hint: "Tanggal Lahir",
                        controller: tanggalLahirCtlr,
                        decoration: InputDecoration(
                            suffixIcon: InkWell(
                                onTap: () async {
                                  var dateChosen = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1978),
                                      lastDate: DateTime(2100));
                                  tanggalLahirCtlr.text =
                                      dateChosen.toString().substring(0, 10);
                                },
                                child: Icon(Icons.calendar_month))),
                      ),
                      RoundedTextFormField(
                        hint: "Telepon",
                        controller: teleponCtlr,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          RoundedTextFormField(
                            hint: "Kota/Kabupaten",
                            controller: kotaKabCtlr,
                          ),
                          const Text("Aktifkan lokasi?")
                        ],
                      ),
                      RoundedTextFormField(
                        hint: "Kode Pos",
                        controller: kodePosCtlr,
                      ),
                      RoundedTextFormField(
                        hint: "Kata Sandi*",
                        controller: kataSandiCtlr,
                      ),
                      RoundedTextFormField(
                        hint: "Konfirmasi Kata Sandi*",
                        controller: konfKtSandiCtlr,
                      ),

                      Container(
                        color: Colors.grey[100],
                        child: Row(
                          children: [
                            Checkbox(value: false, onChanged: (val) {}),
                            Text("Saya Bukan Robot"),
                          ],
                        ),
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
                            onPressed: () {
                              ref.read(authStatusProvider.notifier).register(
                                    username: namaCtlr.text,
                                    email: emailCtlr.text,
                                    password: kataSandiCtlr.text,
                                    cPassword: konfKtSandiCtlr.text,
                                    tanggalLahir: tanggalLahirCtlr.text,
                                    fullname: "yyy",
                                    noHp: teleponCtlr.text,
                                    provId: 1,
                                    kotaId: 1,
                                    successCallback: () {
                                      myToast("Register Success");
                                      context.router
                                          .replace(const LandingRoute());
                                    },
                                    failureCallback: () {
                                      myToast("Register Failed");
                                    },
                                  );
                              myToast("OIK");
                            },
                            child: Text("DAFTAR")),
                      ),
                      Text("Sudah memiliki akun?"),
                      InkWell(
                        onTap: () {
                          context.router.pop();
                        },
                        child: Text(
                          "MASUK",
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
