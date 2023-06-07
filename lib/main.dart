import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/drawer_content.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/scrollable_horizontal_image.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/tab_menu_item.dart';

import 'core/consts/colors.dart';
import 'core/consts/sizes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
            headlineSmall: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: const Color(titleColorText),
                fontWeight: FontWeight.bold),
            bodyMedium: const TextStyle(color: Colors.grey),
            bodySmall: const TextStyle(color: Color(titleColorText))),
        appBarTheme: Theme.of(context).appBarTheme.copyWith(
            backgroundColor: Colors.white,
            titleTextStyle: const TextStyle(color: Colors.black),
            iconTheme: const IconThemeData(color: Color(appBarIconColor)),
            actionsIconTheme:
                const IconThemeData(color: Color(appBarIconColor))),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TabBar get _tabBar => const TabBar(
        isScrollable: true,
        indicatorColor: Colors.transparent,
        tabs: [
          TabMenuItem("KABAR"),
          TabMenuItem("JURNAL"),
          TabMenuItem("INFOGRAFIS"),
          TabMenuItem("VIDEO"),
          TabMenuItem("ALBUM FOTO"),
          TabMenuItem("DISKUSI"),
        ],
      );
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Center(
              child: Image.asset("assets/images/nr_logo_horizontal.png")),
          bottom: PreferredSize(
            preferredSize: _tabBar.preferredSize,
            child: ColoredBox(color: Colors.blue, child: _tabBar),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            )
          ],
        ),
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DrawerHeader(
                    margin: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                        border: Border.all(style: BorderStyle.none)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.dehaze),
                      ],
                    )),
                DrawerContent(),
                SizedBox(
                  height: 2 * extra,
                ),
                Container(
                  padding: EdgeInsets.all(big),
                  margin: EdgeInsets.symmetric(vertical: big),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(huge))),
                  child: Text("Masuk / Daftar"),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/icon_facebook.png"),
                          Image.asset("assets/images/icon_ig.png"),
                          Image.asset("assets/images/icon_twitter.png"),
                          Image.asset("assets/images/icon_tiktok.png"),
                          Image.asset("assets/images/icon_youtube.png"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        "neracaruang@neracaruang.com",
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(decoration: TextDecoration.underline),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        "Copyright © PT. Semesta Teknologi Indonesia",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/dashboard_1.png"),
              Padding(
                padding: const EdgeInsets.all(medium),
                child: Column(
                  children: [
                    Image.asset("assets/images/icon_kabar1.png"),
                    Text(
                      'Anita Basudara (nama editor) 26/05/2023, 12:00 WIB',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Text(
                      'PEMKOT DENPASAR LUNCURKAN REDITIA GUNA PERLUASAN DIGITALISASI DAERAH',
                      style: Theme.of(context).textTheme.headlineSmall,
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                        "Pemerintah Kota (Pemkot) Denpasar kini memiliki Renon Digital Area (Reditia). Inovasi ini bertujuan untuk mempercepat dan memperluas digitalisasi pajak...."),
                  ],
                ),
              ),
              Image.asset("assets/images/dashboard_2.png"),
              Padding(
                padding: const EdgeInsets.all(medium),
                child: Column(
                  children: [
                    const Icon(Icons.notes),
                    Text(
                      "PARADOKS DESENTRALISASI : CUMA 4 PERSEN TAPI DAPAT SETENGAH",
                      style: Theme.of(context).textTheme.headlineSmall,
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                        "Sebagian realisasi anggaran yang ditransfer pemerintah pusat ke daerah (propinsi, kota, maupun kabupaten), merupakan dana bagi hasil (DBH). Sumber pendapat yang menjadi hak konstitusi mereka. Maka, selain pendapatan asli daerah (PAD), otonomi fiskal yang 'murni' merupakan kemampuan masing-masing mereka, juga dicerminkan tingkat perolehan DBH-nya."),
                  ],
                ),
              ),
              const ScrollableHorizontalImage(),
              Padding(
                padding: const EdgeInsets.all(medium),
                child: Column(
                  children: [
                    const Icon(Icons.mail),
                    Text(
                      "20 TAHUN OTONOMI DAERAH",
                      style: Theme.of(context).textTheme.headlineSmall,
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                        "Era desentralisasi telah mendorong kepala daerah berinovasi dalam mengembangkan wilayah mereka untuk."),
                  ],
                ),
              ),
              Image.asset("assets/images/neraca_ruang.png"),
              Padding(
                padding: const EdgeInsets.all(medium),
                child: Column(
                  children: [
                    const Icon(Icons.play_arrow),
                    Text(
                      "PLANOLOGI MENGGUGAT (EPISODE 2 : MEMBERI MANFAAT ATAU MENGUNDANG BENCANA?)",
                      style: Theme.of(context).textTheme.headlineSmall,
                      textAlign: TextAlign.center,
                    ),
                    const Text("Ini Isi Sinopsis Video"),
                  ],
                ),
              ),
              const ScrollableHorizontalImage(),
              Padding(
                padding: const EdgeInsets.all(medium),
                child: Column(
                  children: [
                    const Icon(Icons.camera),
                    const Text("Institut Teknlogi Denpasar, 23 Mei 2023"),
                    Text(
                      "ARISAN 6301: PARIWISATA NUSANTARA",
                      style: Theme.of(context).textTheme.headlineSmall,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const ScrollableHorizontalImage(),
              Padding(
                padding: const EdgeInsets.all(medium),
                child: Column(
                  children: [
                    const Icon(Icons.mail),
                    Text(
                      "APAKAH INDONESIA SUDAH MENJALANKAN OTONOMI DAERAH DENGAN BAIK?",
                      style: Theme.of(context).textTheme.headlineSmall,
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                        "Diskusi hangat mengenai pandangan masyarakat terhadap penerapan otonomi daerah di masa kini."),
                  ],
                ),
              ),
              const SizedBox(
                height: extra,
              ),
              Text(
                "IKUTI KAMI",
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/icon_facebook.png"),
                        Image.asset("assets/images/icon_ig.png"),
                        Image.asset("assets/images/icon_twitter.png"),
                        Image.asset("assets/images/icon_tiktok.png"),
                        Image.asset("assets/images/icon_youtube.png"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "neracaruang@neracaruang.com",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
              const ScrollableHorizontalImage(),
            ],
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
