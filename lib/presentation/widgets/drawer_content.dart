import 'package:auto_route/auto_route.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/colors.dart';
import 'package:flutter_neraca_ruang/core/router/app_router.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/dashboard_providers.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/searchable_dropdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/sizes.dart';
import '../../data/models/dashboard_response/dashboard_response.dart';

class DrawerContent extends ConsumerWidget {
  DrawerContent({Key? key}) : super(key: key);

  final List<String> items = [
    'Pemerintah',
    'Wakil Rakyat',
    'Penegak Hukum',
    'Peradilan',
    'Pemasok',
    'Produsen',
    'Distributor',
    'Pengecer',
    'Konsumen',
    'Pembayar Pajak',
    'Pengusaha',
    'Investor',
  ];

  final List<String> items2 = [
    'Pendidikan',
    'Kesehatan',
    'Transportasi',
    'Air Bersih',
    'Energi',
    'Hunian',
    'Lapangan Kerja',
    'Informasi',
    'Ketersediaan',
    'Keamanan',
    'Ketertiban',
    'Kemudahan',
    'Kenyamanan',
    'Bisnis',
    'Ekonomi',
    'Hukum',
    'Politik',
    'Sosial',
  ];

  final List<String> items3 = [
    'Pendapatan Daerah',
    'Dana Bagi Hasil',
    'Pajak',
    'Retribusi',
    'Transfer Pusat',
    'Transfer Daerah',
    'Hibah',
    'Pinjaman',
    'Belanja Daerah',
    '(Belanja) Pegawai',
    '(Belanja) Modal',
    '(Belanja) Barang dan Jasa',
    'Bantuan Sosial',
    'Bunga',
    'Subsidi',
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var listTagsPihak = ref.watch(tagsPihakList);
    var listTagsOtonom = ref.watch(tagsOtonomList);
    var listTagsTopik = ref.watch(tagsTopikList);
    var selectedPihak = ref.watch(tagsPihak);
    var selectedOtonom = ref.watch(tagsOtonom);
    var selectedTopik = ref.watch(tagsTopik);
    return Center(
      child: Column(
        children: [
          SearchableDropdown("TOKOH", listTagsPihak.value ?? <Tags>[],
              onItemTapped: (val) {
            ref.read(tagsPihak.notifier).state = val;
          }),
          SearchableDropdown(
              "TOPIK",
              listTagsTopik.value
                  //     ?.fold<List<Tags>>(<Tags>[],
                  //         (List<Tags> previousValue, Tags element) {
                  //       print("previous Value: $previousValue");
                  //
                  //       if ((previousValue.last.tagsName ?? "") !=
                  //           (element.tagsName ?? "")) {
                  //         return [...previousValue, element];
                  //       } else {
                  //         return previousValue;
                  //       }
                  //     }).toList()
                  ??
                  <Tags>[], onItemTapped: (val) {
            ref.read(tagsTopik.notifier).state = val;
          }),
          SearchableDropdown("OTONOM-METER", listTagsOtonom.value ?? <Tags>[],
              onItemTapped: (val) {
            ref.read(tagsOtonom.notifier).state = val;
          }),
          // Text("selectedPihak: $selectedPihak"),
          // Text("selectedTopik: $selectedTopik"),
          // Text("selectedOtonom: $selectedOtonom"),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(primaryColor)),
              onPressed: () {
                /// suruh server find
                ref.read(startSearchingByTag.notifier).state = true;
                context.router.push(const DatumTypeFilterRoute());
              },
              child: const Text("Cari"))
        ],
      ),
    );
  }
}
