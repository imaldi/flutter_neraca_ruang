import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/async_state_auth_providers.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/my_button.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/profile_image_widget.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/rounded_text_form_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../core/consts/colors.dart';
import '../../core/consts/num_consts.dart';
import '../../core/consts/sizes.dart';
import '../../logic/state_management/riverpod/dashboard_providers.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/bottom_bar_widget.dart';
import '../widgets/main_drawer.dart';
import '../widgets/searchable_dropdown.dart';

@RoutePage()
class EditProfilePage extends ConsumerStatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  ConsumerState<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends ConsumerState<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    final textColor = Color(primaryColor);
    final isEnabled = ref.watch(profileEditMode);
    var userData = ref.watch(authStatusProvider);
    var emailController =
        TextEditingController(text: userData.value?.data?.members?.email);
    var tanggalLahirController = TextEditingController(
        text: userData.value?.data?.members?.tanggalLahir);
    var teleponController =
        TextEditingController(text: userData.value?.data?.members?.noHp);
    // nanti adakan provider buat kota name
    var provName = ref.watch(provNameProfileProvider);
    var kotaName = ref.watch(kotaNameProfileProvider);
    var kotaKabController = TextEditingController(text: kotaName.value);
    var kodePosController =
        TextEditingController(text: userData.value?.data?.members?.kodePos);
    final provinceList = ref.watch(provinceListProvider);
    final kabKotaList = ref.watch(kabKotaListProvider);
    var content = {
      "Email": emailController,
      "Tanggal Lahir": tanggalLahirController,
      "Telepon": teleponController,
      "Kota / Kab.": kotaKabController,
      "Kode Pos": kodePosController,
    };
    final hintColor = Color(primaryHintColor).withAlpha(120);
    final textStyle = TextStyle(color: hintColor);
    ref.listen(profileEditMode, (previous, next) {
      if (next) {
        // ini set untuk dapat nama provinsi dan kab.kota
        print("next profileEditMode data from listen: ${next}");
        print("next profileEditMode auth data from listen: ${userData}");
        ref.read(provIdParamProvider.notifier).state =
            userData.value?.data?.members?.propinsiId ?? 0;
        ref.read(kotaIdParamProvider.notifier).state =
            userData.value?.data?.members?.kotaId ?? 0;
        // ini untuk set nilai dropdown
        ref.read(provIdProvider.notifier).state =
            userData.value?.data?.members?.propinsiId ?? 0;
        ref.read(kotaIdProvider.notifier).state =
            userData.value?.data?.members?.kotaId ?? 0;
      }
    });
    ref.listen(kabKotaListProvider, (prev, next) {
      if (next.hasValue) {
        if (next.value?.every((element) => element != kotaName) ?? false) {
          ref.read(kotaNameProvider.notifier).state = null;
          ref.read(kotaIdParamProvider.notifier).state =
              userData.value?.data?.members?.kotaId ?? 0;
          ref.read(kotaIdProvider.notifier).state =
              userData.value?.data?.members?.kotaId ?? 0;
        }
      }
    });
    // ref.listen(authStatusProvider, (previous, next) {
    //   if ((previous?.hasValue ?? false)) {
    //     // ini set untuk dapat nama provinsi dan kab.kota
    //     print("prev Auth data from listen: ${previous}");
    //     ref.read(provIdParamProvider.notifier).state =
    //         next.value?.data?.members?.propinsiId ?? 0;
    //     ref.read(kotaIdParamProvider.notifier).state =
    //         next.value?.data?.members?.kotaId ?? 0;
    //     // ini untuk set nilai dropdown
    //     ref.read(provIdProvider.notifier).state =
    //         next.value?.data?.members?.propinsiId ?? 0;
    //     ref.read(kotaIdProvider.notifier).state =
    //         next.value?.data?.members?.kotaId ?? 0;
    //
    //     // ref
    //     //     .read(provNameProvider.notifier)
    //     //     .state = val;
    //   }
    // });
    ref.listen(provNameProfileProvider, (previous, next) {
      if (next.hasValue) {
        ref.read(provNameProvider.notifier).state = next.value;
        ref.read(kotaNameProvider.notifier).state = null;
      }
    });

    ref.listen(kotaNameProfileProvider, (previous, next) {
      if (next.hasValue) {
        ref.read(kotaNameProvider.notifier).state = next.value;
      }
    });
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
          child: Column(
            children: [
              ProfileImageWidget(
                isDisplayingUbahButton: true,
              ),
              Text("Nama Provinsi: ${provName.value}"),
              Text("Nama Kota: ${kotaName.value}"),
              Visibility(
                visible: isEnabled,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: medium),
                    child: Text(
                      "Informasi Akun",
                      style: TextStyle(
                          fontSize: big,
                          color: textColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              ...content
                  .map((key, value) => MapEntry(
                      key,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: medium),
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: normal),
                                    child: Text(key))),
                            (key == "Kota / Kab." && isEnabled)
                                ? Expanded(
                                    child: Column(
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
                                                              data
                                                                  .map((e) =>
                                                                      e.name ??
                                                                      "")
                                                                  .toSet(),
                                                              provNameProvider,
                                                              hintText:
                                                                  "Provinsi",
                                                              contentPadding:
                                                                  const EdgeInsets
                                                                          .all(
                                                                      medium),
                                                              onItemTapped:
                                                                  (val) {
                                                                ref
                                                                    .read(kotaNameProvider
                                                                        .notifier)
                                                                    .state = null;
                                                                ref
                                                                    .read(provNameProvider
                                                                        .notifier)
                                                                    .state = val;
                                                                ref
                                                                    .read(provIdProvider
                                                                        .notifier)
                                                                    .state = data
                                                                        .firstWhere((element) =>
                                                                            (element.name ??
                                                                                "") ==
                                                                            val)
                                                                        .id ??
                                                                    0;
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
                                                                data: (data) {
                                                                  return Row(
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Column(
                                                                          children: [
                                                                            SearchableDropdown(
                                                                              // "Kabupaten / Kota",
                                                                              data.map((e) => e.name ?? "").toSet(),
                                                                              kotaNameProvider,
                                                                              hintText: "Kabupaten / Kota",
                                                                              contentPadding: const EdgeInsets.all(medium),
                                                                              onItemTapped: (val) {
                                                                                // ref
                                                                                //     .read(kotaNameProvider
                                                                                //         .notifier)
                                                                                //     .state = null;
                                                                                ref.read(kotaNameProvider.notifier).state = val;
                                                                                ref.read(kotaIdProvider.notifier).state = data.firstWhere((element) => (element.name ?? "") == val).id ?? 0;
                                                                                // ref.read(kotaIdParamProvider.notifier).state = data.firstWhere((element) => (element.name ?? "") == val).id ?? 0;
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
                                                                loading: () =>
                                                                    Center(
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
                                            loading: () => Center(
                                                child:
                                                    CircularProgressIndicator())),
                                      ],
                                    ),
                                  )
                                : Expanded(
                                    flex: 4,
                                    child: RoundedTextFormField(
                                      isEnabled: isEnabled,
                                      readOnly:
                                          (key == "Tanggal Lahir" && isEnabled),
                                      controller: value,
                                      hint: key,
                                      borderRadius: medium,
                                      decoration: (key == "Tanggal Lahir" &&
                                              isEnabled)
                                          ? InputDecoration(
                                              hintStyle: textStyle,
                                              suffixIcon: InkWell(
                                                  onTap: () async {
                                                    var dateChosen =
                                                        await showDatePicker(
                                                            context: context,
                                                            initialDate:
                                                                DateTime.now(),
                                                            firstDate:
                                                                DateTime(1978),
                                                            lastDate:
                                                                DateTime.now());
                                                    if (dateChosen != null) {
                                                      ref
                                                          .read(
                                                              tanggalLahirProvider
                                                                  .notifier)
                                                          .state = DateFormat(
                                                              "dd-MM-yyyy")
                                                          .format(dateChosen);
                                                      ref
                                                          .read(
                                                              tanggalLahirParamProvider
                                                                  .notifier)
                                                          .state = DateFormat(
                                                              "yyyy-MM-dd")
                                                          .format(dateChosen);
                                                      tanggalLahirController
                                                          .clear();
                                                      tanggalLahirController
                                                          .text = DateFormat(
                                                              "yyyy-MM-dd")
                                                          .format(dateChosen);
                                                    }
                                                    // dateChosen.toString().substring(0, 10);
                                                  },
                                                  child: Icon(
                                                    Icons.calendar_month,
                                                    color: Colors.black,
                                                  )))
                                          : null,
                                    ),
                                  ),
                          ],
                        ),
                      )))
                  .values
                  .toList(),
              Visibility(
                visible: isEnabled,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: medium),
                        child: MyButton(
                          onPressed: () {
                            ref.read(authStatusProvider.notifier).editMember(
                                  email: emailController.text,
                                  noHp: teleponController.text,
                                  kodePos: kodePosController.text,
                                );
                            ref.read(profileEditMode.notifier).state = false;
                          },
                          child: Text("Simpan"),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: medium),
                        child: MyButton(
                            child: Text(
                              "Batal",
                              style: TextStyle(color: textColor),
                            ),
                            isSecondary: true,
                            onPressed: () {
                              ref.read(profileEditMode.notifier).state = false;
                            }),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
