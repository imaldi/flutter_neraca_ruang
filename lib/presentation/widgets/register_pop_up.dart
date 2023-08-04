import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/i_am_not_robot.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/rounded_container.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/rounded_text_form_field.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/searchable_dropdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/consts/assets.dart';
import '../../core/consts/colors.dart';
import '../../core/consts/hive_const.dart';
import '../../core/consts/privacy_policy.dart';
import '../../core/consts/regex_pattern.dart';
import '../../core/consts/sizes.dart';
import '../../core/consts/urls.dart';
import '../../core/helper_functions/deeplink_handler.dart';
import '../../core/router/app_router.dart';
import '../../data/models/kota_kabupaten_response/kota_kabupaten_response.dart';
import '../../di.dart';
import '../../logic/state_management/riverpod/async_state_auth_providers.dart';
import '../../logic/state_management/riverpod/current_location_providers.dart';
import '../../logic/state_management/riverpod/dashboard_providers.dart';
import 'login_pop_up.dart';
import 'my_confirm_dialog/my_confirm_dialog.dart';
import 'my_toast.dart';

class RegisterPopUp extends ConsumerWidget {
  const RegisterPopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final namaCtlr = TextEditingController(text: ref.watch(nameProvider));
    final emailCtlr = TextEditingController(text: ref.watch(emailProvider));
    final tanggalLahirCtlr =
        TextEditingController(text: ref.watch(tanggalLahirProvider));
    final teleponCtlr = TextEditingController(text: ref.watch(teleponProvider));
    final kodePosCtlr = TextEditingController(text: ref.watch(kodePosProvider));
    final kataSandiCtlr =
        TextEditingController(text: ref.watch(passwordProvider));
    final konfKtSandiCtlr =
        TextEditingController(text: ref.watch(confPasswordProvider));
    final hintColor = Color(primaryHintColor).withAlpha(120);
    final textStyle = TextStyle(color: hintColor);
    final provinceList = ref.watch(provinceListProvider);
    final kabKotaList = ref.watch(kabKotaListProvider);
    final provinceId = ref.watch(provIdParamProvider);
    final provinceName = ref.watch(provNameProvider);
    final kabKotaId = ref.watch(kotaIdParamProvider);
    final kabKotaName = ref.watch(kotaNameProvider);
    var userData = ref.watch(authStatusProvider).value;
    var provName = userData?.data?.members?.propinsiName;
    var kotaName = userData?.data?.members?.kotaName;
    var detectLokasi = ref.watch(isDetectLokasi);
    var locationState =
        detectLokasi ? ref.watch(currentLocationProvider) : null;
    final regex = RegExp(passwordPattern);
    var isAcceptPrivacyPolicy = ref.watch(isUserAcceptingPolicy);

    return Center(
      child: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Container(
            padding: const EdgeInsets.all(huge),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(style: BorderStyle.none),
                borderRadius: BorderRadius.circular(extra)),
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
                      child: InkWell(
                        onTap: () async {
                          var url = Uri.parse(gmailOAuthFullUrl);
                          initUniLinks(ref, context, "Register");

                          if (!await launchUrl(url,
                              mode: LaunchMode.externalApplication)) {
                            throw Exception('Could not launch $url');
                          }
                        },
                        child: RoundedContainer(huge,
                            padding: const EdgeInsets.symmetric(
                                vertical: normal, horizontal: huge),
                            boxDecoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(primaryColor), width: small)),
                            child: Center(
                              child: const Text(
                                "Daftar dengan email",
                                style: TextStyle(
                                    fontSize: medium,
                                    color: Color(primaryHintColor)),
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
                const Text("atau"),

                /// Custom TFF
                RoundedTextFormField(
                  hint: "Nama",
                  decoration: InputDecoration(hintStyle: textStyle),
                  // controller: namaCtlr,
                  onChanged: (val) {
                    ref.read(nameProvider.notifier).state = val;
                  },
                ),

                RoundedTextFormField(
                  hint: "Email",
                  // controller: emailCtlr,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (val) {
                    ref.read(emailProvider.notifier).state = val;
                  },
                  decoration: InputDecoration(
                    hintStyle: textStyle,
                  ),
                ),

                RoundedTextFormField(
                  hint: "Tanggal Lahir",
                  readOnly: true,
                  controller: tanggalLahirCtlr,
                  // onChanged: (val) {
                  // },
                  decoration: InputDecoration(
                      hintStyle: textStyle,
                      suffixIcon: InkWell(
                          onTap: () async {
                            var dateChosen = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1978),
                                lastDate: DateTime.now());
                            if (dateChosen != null) {
                              ref.read(tanggalLahirProvider.notifier).state =
                                  DateFormat("dd-MM-yyyy").format(dateChosen);
                              ref
                                      .read(tanggalLahirParamProvider.notifier)
                                      .state =
                                  DateFormat("yyyy-MM-dd").format(dateChosen);
                            }
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
                  // controller: teleponCtlr,
                  onChanged: (val) {
                    ref.read(teleponProvider.notifier).state = val;
                  },
                  decoration: InputDecoration(
                    hintStyle: textStyle,
                  ),
                ),
                Column(
                  children: [
                    provinceList.when(
                        data: (data) {
                          return Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        SearchableDropdown(
                                          // "Provinsi",
                                          data.map((e) => e.name ?? "").toSet(),
                                          provNameProvider,
                                          // defaultValue: provName,
                                          hintText: "Provinsi",
                                          borderRadius: huge,
                                          contentPadding:
                                              const EdgeInsets.all(medium),
                                          onItemTapped: (val) {
                                            ref
                                                .read(kotaNameProvider.notifier)
                                                .state = null;
                                            ref
                                                .read(provNameProvider.notifier)
                                                .state = val;
                                            ref
                                                .read(provIdParamProvider
                                                    .notifier)
                                                .state = data
                                                    .firstWhere((element) =>
                                                        (element.name ?? "") ==
                                                        val)
                                                    .id ??
                                                0;
                                            ref.invalidate(isDetectLokasi);
                                          },
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        kabKotaList.when(
                                            data: (dataKab) {
                                              return Row(
                                                children: [
                                                  Expanded(
                                                    child: Column(
                                                      children: [
                                                        SearchableDropdown(
                                                          // "Kabupaten / Kota",
                                                          dataKab
                                                              .map((e) =>
                                                                  e.name ?? "")
                                                              .toSet(),
                                                          kotaNameProvider,
                                                          borderRadius: huge,
                                                          defaultValue:
                                                              kotaName,
                                                          hintText:
                                                              "Kabupaten / Kota",
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .all(medium),
                                                          onItemTapped: (val) {
                                                            // ref
                                                            //     .read(kotaNameProvider
                                                            //         .notifier)
                                                            //     .state = null;
                                                            ref
                                                                .read(kotaNameProvider
                                                                    .notifier)
                                                                .state = val;
                                                            ref
                                                                .read(kotaIdParamProvider
                                                                    .notifier)
                                                                .state = dataKab
                                                                    .firstWhere(
                                                                        (element) =>
                                                                            (element.name ??
                                                                                "") ==
                                                                            val,
                                                                        orElse: () =>
                                                                            KotaKabupaten(id: 0))
                                                                    .id ??
                                                                0;
                                                            ref.invalidate(
                                                                isDetectLokasi);
                                                          },
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                            error: (o, st) {
                                              return Container();
                                            },
                                            loading: () => Center(
                                                child:
                                                    CircularProgressIndicator())),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                        error: (o, st) {
                          return Container();
                        },
                        loading: () =>
                            Center(child: CircularProgressIndicator())),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                        onTap: () async {
                          // ref.watch(currentLocationProvider);
                          await myConfirmDialog(context,
                              title: "Aktifkan Lokasi?",
                              positiveButtonText: "Ya",
                              negativeButtonText: "Batal", positiveButton: () async {
                                if(isAcceptPrivacyPolicy.value == null || isAcceptPrivacyPolicy.value == false){
                                  // if(next.value == true){
                                  await showDialog(context: context, builder: (c){
                                    return AlertDialog(
                                      title: SingleChildScrollView(child: Text("Privacy Policy",style: TextStyle(fontWeight: FontWeight.bold),)),
                                      content: Text(privacyPolicy),
                                      actions: [
                                        ElevatedButton(onPressed: (){
                                          var policyBox = sl<Box<bool>>();
                                          // var dataFromBox = policyBox.get(policyBoxKey);

                                          policyBox.put(policyBoxKey, false);
                                          context.router.pop();
                                          // context.router.pop();
                                        }, child: Text("Decline")),
                                        ElevatedButton(onPressed: (){
                                          var policyBox = sl<Box<bool>>();
                                          // var dataFromBox = policyBox.get(policyBoxKey);

                                          policyBox.put(policyBoxKey, true);
                                          ref.read(isDetectLokasi.notifier).state = true;
                                          myToast("GPS Diaktifkan");
                                          context.router.pop();

                                        }, child: Text("Accept")),
                                      ],
                                    );
                                  });
                                } else {
                                  ref.read(isDetectLokasi.notifier).state = true;
                                  myToast("GPS Diaktifkan");
                                  context.router.pop();

                                }


                          }, negativeButton: () {
                            context.router.pop();
                          });
                        },
                        child: Text("Aktifkan Lokasi?")),
                  ],
                ),

                RoundedTextFormField(
                  hint: "Kode Pos",
                  // controller: kodePosCtlr,
                  keyboardType: TextInputType.number,
                  onChanged: (val) {
                    ref.read(kodePosProvider.notifier).state = val;
                  },
                  decoration: InputDecoration(
                    hintStyle: textStyle,
                  ),
                ),
                RoundedTextFormField(
                  hint: "Kata Sandi",
                  isObscureText: true,
                  // onChanged: (val) {
                  //   ref.read(passwordProvider.notifier).state = val;
                  // },
                  controller: kataSandiCtlr,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (val) {
                    if ((val ?? "").length < 8) {
                      return "Kata Sandi minimal 8 karakter";
                    }
                    if (!regex.hasMatch(kataSandiCtlr.text)) {
                      return "Kata sandi Anda harus lebih dari delapan karakter dan berisi kombinasi angka, huruf, dan karakter khusus (:;!@#\$%^&*()_+-=,.<>/?\'\")";
                    }

                    return null;
                  },
                  decoration: InputDecoration(
                    hintStyle: textStyle,
                  ),
                ),
                RoundedTextFormField(
                  hint: "Konfirmasi Kata Sandi",
                  isObscureText: true,
                  // onChanged: (val) {
                  //   ref.read(confPasswordProvider.notifier).state = val;
                  // },
                  controller: konfKtSandiCtlr,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (val) {
                    if ((val ?? "") != kataSandiCtlr.text) {
                      return "Password Konfirmasi tidak cocok";
                    }
                  },
                  decoration: InputDecoration(
                    hintStyle: textStyle,
                  ),
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
                      onPressed: () {
                        ref.read(authStatusProvider.notifier).register(
                              username: namaCtlr.text,
                              email: emailCtlr.text,
                              password: kataSandiCtlr.text,
                              cPassword: konfKtSandiCtlr.text,
                              // tanggalLahir: tanggalLahirCtlr.text,
                              fullname: namaCtlr.text,
                              noHp: teleponCtlr.text,
                              provId: provinceId,
                              kotaId: kabKotaId,
                              kodePos: kodePosCtlr.text,
                              successCallback: () {
                                ref.invalidate(temporaryImNotRobotProvider);

                                myToast("Register Success");
                                context.router.pop();
                              },
                              failureCallback: (message) {
                                ref.invalidate(temporaryImNotRobotProvider);

                                myToast("Register Failed: $message");
                              },
                            );
                        // myToast("OIK");
                      },
                      child: Text("DAFTAR")),
                ),
                Text("Sudah memiliki akun?"),
                InkWell(
                  onTap: () async {
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
                                  child: LoginPopUp(),
                                ),
                              ),
                            ),
                          );
                        });
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
    );
  }
}
