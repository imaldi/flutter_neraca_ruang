import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/async_state_auth_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
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
    final hintColor = Color(primaryHintColor).withAlpha(120);
    final textStyle = TextStyle(color: hintColor);

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
                      IntrinsicWidth(
                        child: Column(
                          children: [
                            Container(
                                width: double.infinity,
                                child: Image.asset(iconNRAppbar)),
                            Text(
                              "Pendaftaran",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: huge,
                                  color: Color(primaryColor)),
                            ),
                          ],
                        ),
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
                                    "Daftar dengan email",
                                    style: TextStyle(
                                        fontSize: medium,
                                        color: Color(primaryHintColor)),
                                  ),
                                )),
                          ),
                        ],
                      ),
                      const Text("atau"),

                      /// Custom TFF
                      RoundedTextFormField(
                        hint: "Nama",
                        decoration: InputDecoration(hintStyle: textStyle),
                        controller: namaCtlr,
                      ),

                      RoundedTextFormField(
                        hint: "Email*",
                        controller: emailCtlr,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintStyle: textStyle,
                        ),
                      ),

                      RoundedTextFormField(
                        hint: "Tanggal Lahir",
                        controller: tanggalLahirCtlr,
                        decoration: InputDecoration(
                            hintStyle: textStyle,
                            suffixIcon: InkWell(
                                onTap: () async {
                                  var dateChosen = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1978),
                                      lastDate: DateTime.now());
                                  if (dateChosen != null)
                                    tanggalLahirCtlr.text =
                                        DateFormat("dd-MM-yyyy")
                                            .format(dateChosen);
                                  // dateChosen.toString().substring(0, 10);
                                },
                                child: Icon(
                                  Icons.calendar_month,
                                  color: Colors.black,
                                ))),
                      ),
                      RoundedTextFormField(
                        hint: "Telepon",
                        keyboardType: TextInputType.phone,
                        controller: teleponCtlr,
                        decoration: InputDecoration(
                          hintStyle: textStyle,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          RoundedTextFormField(
                            hint: "Kota/Kabupaten",
                            controller: kotaKabCtlr,
                            decoration: InputDecoration(
                              hintStyle: textStyle,
                            ),
                          ),
                          const Text("Aktifkan lokasi?")
                        ],
                      ),
                      RoundedTextFormField(
                        hint: "Kode Pos",
                        controller: kodePosCtlr,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintStyle: textStyle,
                        ),
                      ),
                      RoundedTextFormField(
                        hint: "Kata Sandi",
                        isObscureText: true,
                        controller: kataSandiCtlr,
                        decoration: InputDecoration(
                          hintStyle: textStyle,
                        ),
                      ),
                      RoundedTextFormField(
                        hint: "Konfirmasi Kata Sandi",
                        isObscureText: true,
                        controller: konfKtSandiCtlr,
                        decoration: InputDecoration(
                          hintStyle: textStyle,
                        ),
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
                              // myToast("OIK");
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
