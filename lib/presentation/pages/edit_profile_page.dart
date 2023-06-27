import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/async_state_auth_providers.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/my_button.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/profile_image_widget.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/rounded_text_form_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    ref.listen(authStatusProvider, (previous, next) {
      if (next.hasValue) {
        // ini set untuk dapat nama provinsi dan kab.kota
        ref.read(provIdParamProvider.notifier).state =
            next.value?.data?.members?.propinsiId ?? 0;
        ref.read(kotaIdParamProvider.notifier).state =
            next.value?.data?.members?.kotaId ?? 0;
        // ini untuk set nilai dropdown
        ref.read(provIdProvider.notifier).state =
            next.value?.data?.members?.propinsiId ?? 0;
        ref.read(kotaIdProvider.notifier).state =
            next.value?.data?.members?.propinsiId ?? 0;

        // ref
        //     .read(provNameProvider.notifier)
        //     .state = val;
      }
    });
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
              ProfileImageWidget(),
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
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: provinceList.when(
                                              data: (data) {
                                                return Column(
                                                  children: [
                                                    SearchableDropdown(
                                                      // "Provinsi",
                                                      data
                                                          .map((e) =>
                                                              e.name ?? "")
                                                          .toSet(),
                                                      provNameProvider,
                                                      hintText: "Provinsi",
                                                      contentPadding:
                                                          const EdgeInsets.all(
                                                              medium),
                                                      onItemTapped: (val) {
                                                        ref
                                                            .read(
                                                                kotaNameProvider
                                                                    .notifier)
                                                            .state = null;
                                                        ref
                                                            .read(
                                                                provNameProvider
                                                                    .notifier)
                                                            .state = val;
                                                        ref
                                                            .read(provIdProvider
                                                                .notifier)
                                                            .state = data
                                                                .firstWhere(
                                                                    (element) =>
                                                                        (element.name ??
                                                                            "") ==
                                                                        val)
                                                                .id ??
                                                            0;
                                                      },
                                                    ),
                                                    kabKotaList.when(
                                                        data: (data) {
                                                          // return Text("Kab/Kota List: $data");
                                                          return SearchableDropdown(
                                                            // "Kab/Kota",
                                                            data
                                                                .map((e) =>
                                                                    e.name ??
                                                                    "")
                                                                .toSet(),
                                                            kotaNameProvider,
                                                            hintText:
                                                                "Kabupaten / Kota",
                                                            contentPadding:
                                                                const EdgeInsets
                                                                        .all(
                                                                    medium),
                                                            onItemTapped:
                                                                (val) {
                                                              ref
                                                                  .read(kotaNameProvider
                                                                      .notifier)
                                                                  .state = val;

                                                              ref
                                                                  .read(kotaIdParamProvider
                                                                      .notifier)
                                                                  .state = data
                                                                      .firstWhere((element) =>
                                                                          (element.name ??
                                                                              "") ==
                                                                          val)
                                                                      .id ??
                                                                  0;
                                                            },
                                                          );
                                                        },
                                                        error: (o, st) =>
                                                            SearchableDropdown(
                                                                <String>{},
                                                                kotaNameProvider,
                                                                hintText:
                                                                    "Kabupaten / Kota",
                                                                contentPadding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        medium)),
                                                        loading: () =>
                                                            SearchableDropdown(
                                                              // "Kab/Kota",
                                                              <String>{},
                                                              kotaNameProvider,
                                                              hintText:
                                                                  "Kabupaten / Kota",
                                                              contentPadding:
                                                                  const EdgeInsets
                                                                          .all(
                                                                      medium),
                                                            ))
                                                  ],
                                                );
                                                // return Text(data.toString());
                                              },
                                              error: (o, st) => Column(
                                                    children: [
                                                      SearchableDropdown(
                                                        // "Provinsi",
                                                        {},
                                                        provNameProvider,
                                                        hintText: "Provinsi",
                                                        contentPadding:
                                                            const EdgeInsets
                                                                .all(medium),
                                                      ),
                                                      kabKotaList.when(
                                                          data: (data) {
                                                            // return Text("Kab/Kota List: $data");
                                                            return SearchableDropdown(
                                                              // "Kab/Kota",
                                                              {},
                                                              kotaNameProvider,
                                                              hintText:
                                                                  "Kabupaten / Kota",
                                                            );
                                                          },
                                                          error: (o, st) =>
                                                              SearchableDropdown(
                                                                // "Kab/Kota",
                                                                {},
                                                                kotaNameProvider,
                                                                hintText:
                                                                    "Kabupaten / Kota",
                                                              ),
                                                          loading: () =>
                                                              SearchableDropdown(
                                                                // "Kab/Kota",
                                                                {},
                                                                kotaNameProvider,
                                                                hintText:
                                                                    "Kabupaten / Kota",
                                                              ))
                                                    ],
                                                  ),
                                              loading: () => Column(
                                                    children: [
                                                      SearchableDropdown(
                                                        // "Provinsi",
                                                        {},
                                                        provNameProvider,
                                                        hintText: "Provinsi",
                                                        contentPadding:
                                                            const EdgeInsets
                                                                .all(medium),
                                                      ),
                                                      kabKotaList.when(
                                                          data: (data) {
                                                            // return Text("Kab/Kota List: $data");
                                                            return SearchableDropdown(
                                                              // "Kab/Kota",
                                                              {},
                                                              kotaNameProvider,
                                                              hintText:
                                                                  "Kabupaten / Kota",
                                                            );
                                                          },
                                                          error: (o, st) =>
                                                              SearchableDropdown(
                                                                // "Kab/Kota",
                                                                {},
                                                                kotaNameProvider,
                                                                hintText:
                                                                    "Kabupaten / Kota",
                                                              ),
                                                          loading: () =>
                                                              SearchableDropdown(
                                                                // "Kab/Kota",
                                                                {},
                                                                kotaNameProvider,
                                                                hintText:
                                                                    "Kabupaten / Kota",
                                                              ))
                                                    ],
                                                  )),
                                        ),
                                      ],
                                    ),
                                  )
                                : Expanded(
                                    flex: 4,
                                    child: RoundedTextFormField(
                                      isEnabled: isEnabled,
                                      controller: value,
                                      hint: key,
                                      borderRadius: medium,
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
