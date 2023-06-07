import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/tab_menu.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
          Text("NERACA "),
          Icon(Icons.add),
          Text(" RUANG"),
        ]),
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
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const TabMenu(),
            Image.asset("assets/images/dashboard_1.png"),
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
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
