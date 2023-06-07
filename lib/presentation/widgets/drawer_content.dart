import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/colors.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/searchable_dropdown.dart';

import '../../core/consts/sizes.dart';

class DrawerContent extends StatefulWidget {
  const DrawerContent({Key? key}) : super(key: key);

  @override
  _DrawerContentState createState() => _DrawerContentState();
}

class _DrawerContentState extends State<DrawerContent> {
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
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SearchableDropdown("TOKOH", items),
          SearchableDropdown("TOPIK", items2),
          SearchableDropdown("OTONOM-METER", items3),
        ],
      ),
    );
  }
}
