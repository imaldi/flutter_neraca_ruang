import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../core/consts/sizes.dart';

@RoutePage()
class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Privacy Policy"),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(medium),
          child: SingleChildScrollView(
            child: Text(
              '''
Kebijakan Privasi

Neraca Ruang berkomitmen untuk melindungi data pribadi / perusahaan pelanggan. Dengan menggunakan layanan kami, Anda dianggap telah menyetujui Kebijakan Privasi ini.
Jenis Data Tercatat
Neraca Ruang mencatat data yang berhubungan dengan pelanggan melalui metode berikut :
Metode pencatatan data otomatis seperti dan tidak terbatas pada protokol komunikasi, alamat IP, cookies, dan lain-lain
Registrasi online dan offline
Korespondensi email
Komunikasi online dan offline
Sumber-sumber informasi dari pihak ketiga

Penggunaan Data
Jenis-jenis data diatas digunakan oleh Neraca Ruang untuk :
Melakukan komunikasi dalam rangka penyediaan layanan
Melakukan pertanggungjawaban akan penyediaan layanan baik kepada pelanggan bersangkutan maupun pihak penegak hukum
Mengakui sebagai salah satu aset tak berwujud
Mempublikasikan dalam rangka melakukan promosi
Mencantumkan dalam data WHOIS Domain

Keamanan Data
Neraca Ruang berusaha sebaik-baiknya untuk menjaga data pribadi / perusahaan pelanggan dari pihak-pihak yang tidak berwenang untuk mendapatkan data tersebut, kecuali untuk melakukan hal-hal yang tersebut pada Penggunaan Data.

Batasan Kerahasiaan Data
Data dianggap bukan data rahasia dan Neraca Ruang dibebaskan dari kewajiban untuk melindunginya apabila data telah menjadi bagian dari domain publik dan diketahui secara umum sebagai akibat dari kebijakan pihak-pihak yang berwenang untuk mempublikasikannya seperti di dalam WHOIS domain dan lain-lain.

Untuk user yang tidak aktif, dapat mengirimkan email ke info@neracaruang.com menggunakan email yang terdaftar untuk meminta penghapusan akun beserta seluruh data yang ada di dalamnya. Namun bagaimanapun juga neraca ruang harus tunduk pada aturan perundangan yang berlaku apabila suatu saat terdapat peraturan perundangan mengenai penghapusan data pelanggan.

              '''
            ),
          ),
        ),
      ),
    );
  }
}
