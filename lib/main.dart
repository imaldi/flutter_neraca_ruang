import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/drawer_content.dart';
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DrawerHeader(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.dehaze),
                ],
              )),
              DrawerContent(),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "Copyright © PT. Semesta Teknologi Indonesia",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ],
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
                    const Icon(Icons.newspaper),
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
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.asset("assets/images/sliding_1.png"),
                      Image.asset("assets/images/dashboard_2.png"),
                    ]
                        .map((e) => Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: medium),
                              constraints: BoxConstraints(
                                  maxHeight: 250,
                                  minWidth:
                                      MediaQuery.of(context).orientation ==
                                              Orientation.portrait
                                          ? MediaQuery.of(context).size.width
                                          : MediaQuery.of(context).size.height,
                                  maxWidth:
                                      MediaQuery.of(context).orientation ==
                                              Orientation.portrait
                                          ? MediaQuery.of(context).size.width
                                          : MediaQuery.of(context).size.height),
                              child: SizedBox.expand(
                                child: FittedBox(
                                  fit: BoxFit.cover,
                                  child: e,
                                ),
                              ),
                            ))
                        .toList(),
                  )),
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
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    constraints: const BoxConstraints(maxHeight: 250),
                    child: Row(
                      children: [
                        Image.asset("assets/images/sliding_1.png"),
                        Image.asset("assets/images/dashboard_3.png"),
                      ]
                          .map((e) => Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: medium),
                                constraints: BoxConstraints(
                                    minWidth: MediaQuery.of(context)
                                                .orientation ==
                                            Orientation.portrait
                                        ? MediaQuery.of(context).size.width
                                        : MediaQuery.of(context).size.height,
                                    maxWidth: MediaQuery.of(context)
                                                .orientation ==
                                            Orientation.portrait
                                        ? MediaQuery.of(context).size.width
                                        : MediaQuery.of(context).size.height),
                                child: SizedBox.expand(
                                  child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: e,
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                  )),
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
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    constraints: const BoxConstraints(maxHeight: 250),
                    child: Row(
                      children: [
                        Image.asset("assets/images/sliding_1.png"),
                        Image.asset("assets/images/dashboard_3.png"),
                      ]
                          .map((e) => Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: medium),
                                constraints: BoxConstraints(
                                    minWidth: MediaQuery.of(context)
                                                .orientation ==
                                            Orientation.portrait
                                        ? MediaQuery.of(context).size.width
                                        : MediaQuery.of(context).size.height,
                                    maxWidth: MediaQuery.of(context)
                                                .orientation ==
                                            Orientation.portrait
                                        ? MediaQuery.of(context).size.width
                                        : MediaQuery.of(context).size.height),
                                child: SizedBox.expand(
                                  child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: e,
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                  )),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.add),
                  Icon(Icons.ac_unit),
                  Icon(Icons.access_alarm),
                  Icon(Icons.add_chart_outlined),
                  Icon(Icons.mail),
                ],
              ),
              const Text(
                "Email",
                textAlign: TextAlign.center,
              ),
              const Text(
                "aldiirsanmajid@gmail.com",
                style: TextStyle(decoration: TextDecoration.underline),
                textAlign: TextAlign.center,
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    constraints: const BoxConstraints(maxHeight: 250),
                    child: Row(
                      children: [
                        Image.asset("assets/images/sliding_1.png"),
                        Image.asset("assets/images/dashboard_3.png"),
                      ]
                          .map((e) => Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: medium),
                                constraints: BoxConstraints(
                                    minWidth: MediaQuery.of(context)
                                                .orientation ==
                                            Orientation.portrait
                                        ? MediaQuery.of(context).size.width
                                        : MediaQuery.of(context).size.height,
                                    maxWidth: MediaQuery.of(context)
                                                .orientation ==
                                            Orientation.portrait
                                        ? MediaQuery.of(context).size.width
                                        : MediaQuery.of(context).size.height),
                                child: SizedBox.expand(
                                  child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: e,
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                  )),
            ],
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
