import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/current_location_providers.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/comment_widget.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/content_widget.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/image_picker/my_image_picker.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/my_toast.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/colors.dart';
import '../../core/consts/sizes.dart';
import '../../data/models/dashboard_response/dashboard_response.dart';
import '../../data/models/kota_kabupaten_response/kota_kabupaten_response.dart';
import '../../di.dart';
import '../../logic/state_management/riverpod/all_content_list_providers.dart';
import '../../logic/state_management/riverpod/dashboard_providers.dart';
import '../widgets/searchable_dropdown.dart';

@RoutePage()
class TestApiPage extends ConsumerStatefulWidget {
  const TestApiPage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _TestApiPageState();
}

class _TestApiPageState extends ConsumerState<TestApiPage> {
  @override
  void initState() {
    super.initState();
    ref.read(fotoProvider);
  }

  @override
  Widget build(BuildContext context) {
    var locationState = ref.watch(currentLocationProvider);
    final provinceList = ref.watch(provinceListProvider);
    final kabKotaList = ref.watch(kabKotaListProvider);
    final provinceId = ref.watch(provIdProvider);
    final provinceName = ref.watch(provNameProvider);
    final kabKotaId = ref.watch(kotaIdParamProvider);
    final kabKotaName = ref.watch(kotaNameProvider);
    var kotaName = ref.watch(kotaNameProfileProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text("Heyyy"),
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
            child: SingleChildScrollView(
          controller: sl<ScrollController>(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                                        hintText: "Provinsi",
                                        borderRadius: medium,
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
                                              .read(provIdProvider.notifier)
                                              .state = data
                                                  .firstWhere((element) =>
                                                      (element.name ?? "") ==
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
                                                        borderRadius: medium,
                                                        defaultValue:
                                                            kotaName.value,
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
                                                              .read(
                                                                  kotaNameProvider
                                                                      .notifier)
                                                              .state = val;
                                                          ref
                                                              .read(
                                                                  kotaIdProvider
                                                                      .notifier)
                                                              .state = dataKab
                                                                  .firstWhere(
                                                                      (element) =>
                                                                          (element.name ??
                                                                              "") ==
                                                                          val,
                                                                      orElse: () =>
                                                                          KotaKabupaten(
                                                                              id: 0))
                                                                  .id ??
                                                              0;
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
              locationState.when(
                  data: (data) => Text("Lokasi saat ini: $data"),
                  error: (o, st) => Text("Ada Error"),
                  loading: () => CircularProgressIndicator())
            ],
          ),
        )

            // fotoTerbaru.when(
            //     data: (foto) {
            //       return Text(foto.toJson().toString());
            //     },
            //     error: (err, stack) {
            //       return Text("Ada Error");
            //     },
            //     loading: () => const CircularProgressIndicator()),
            ),
      ),
    );
  }
}
