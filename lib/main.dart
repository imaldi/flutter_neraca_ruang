import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/tab_menu_item.dart';

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
        appBarTheme: Theme.of(context).appBarTheme.copyWith(
            backgroundColor: Colors.white,
            titleTextStyle: TextStyle(color: Colors.black),
            iconTheme: IconThemeData(color: Colors.black),
            actionsIconTheme: IconThemeData(color: Colors.black)),
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
  TabBar get _tabBar => TabBar(
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
          title:
              Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
            Text("NERACA "),
            Icon(Icons.add),
            Text(" RUANG"),
          ]),
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
            children: const [
              DrawerHeader(child: Text("Hi This is drawer header")),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/dashboard_1.png"),
              Icon(Icons.newspaper),
              const Text(
                'Anita Basudara (nama editor) 26/05/2023, 12:00 WIB',
              ),
              Text(
                'PEMKOT DENPASAR LUNCURKAN REDITIA GUNA PERLUASAN DIGITALISASI DAERAH',
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const Text(
                  "Pemerintah Kota (Pemkot) Denpasar kini memiliki Renon Digital Area (Reditia). Inovasi ini bertujuan untuk mempercepat dan memperluas digitalisasi pajak...."),
              Image.asset("assets/images/dashboard_2.png"),
              Icon(Icons.notes),
              Text(
                "PARADOKS DESENTRALISASI : CUMA 4 PERSEN TAPI DAPAT SETENGAH",
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              Text(
                  "Sebagian realisasi anggaran yang ditransfer pemerintah pusat ke daerah (propinsi, kota, maupun kabupaten), merupakan dana bagi hasil (DBH). Sumber pendapat yang menjadi hak konstitusi mereka. Maka, selain pendapatan asli daerah (PAD), otonomi fiskal yang 'murni' merupakan kemampuan masing-masing mereka, juga dicerminkan tingkat perolehan DBH-nya."),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    constraints: BoxConstraints(maxHeight: 250),
                    child: Row(
                      children: [
                        Image.asset("assets/images/sliding_1.png"),
                        Image.asset("assets/images/dashboard_2.png"),
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
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: e,
                                ),
                              ))
                          .toList(),
                    ),
                  )),
              Icon(Icons.mail),
              Text(
                "20 TAHUN OTONOMI DAERAH",
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              Text(
                  "Era desentralisasi telah mendorong kepala daerah berinovasi dalam mengembangkan wilayah mereka untuk."),
              Image.asset("assets/images/neraca_ruang.png"),
              Icon(Icons.play_arrow),
              Text(
                "PLANOLOGI MENGGUGAT (EPISODE 2 : MEMBERI MANFAAT ATAU MENGUNDANG BENCANA?)",
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              Text("Ini Isi Sinopsis Video"),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    constraints: BoxConstraints(maxHeight: 250),
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
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: e,
                                ),
                              ))
                          .toList(),
                    ),
                  )),
              Icon(Icons.camera),
              Text("Institut Teknlogi Denpasar, 23 Mei 2023"),
              Text(
                "ARISAN 6301: PARIWISATA NUSANTARA",
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    constraints: BoxConstraints(maxHeight: 250),
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
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: e,
                                ),
                              ))
                          .toList(),
                    ),
                  )),
              Icon(Icons.mail),
              Text(
                "APAKAH INDONESIA SUDAH MENJALANKAN OTONOMI DAERAH DENGAN BAIK?",
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              Text(
                  "Diskusi hangat mengenai pandangan masyarakat terhadap penerapan otonomi daerah di masa kini."),
              SizedBox(
                height: extra,
              ),
              Text(
                "IKUTI KAMI",
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add),
                  Icon(Icons.ac_unit),
                  Icon(Icons.access_alarm),
                  Icon(Icons.add_chart_outlined),
                  Icon(Icons.mail),
                ],
              ),
              Text(
                "Email",
                textAlign: TextAlign.center,
              ),
              Text(
                "aldiirsanmajid@gmail.com",
                style: TextStyle(decoration: TextDecoration.underline),
                textAlign: TextAlign.center,
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    constraints: BoxConstraints(maxHeight: 250),
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
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: e,
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
