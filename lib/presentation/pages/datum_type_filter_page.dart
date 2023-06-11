import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../data/models/dashboard_response/dashboard_response.dart';

@RoutePage()
class DatumTypeFilterPage extends StatefulWidget {
  const DatumTypeFilterPage({Key? key}) : super(key: key);

  @override
  _DatumTypeFilterPageState createState() => _DatumTypeFilterPageState();
}

class _DatumTypeFilterPageState extends State<DatumTypeFilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Halaman Filtered List"),
        ),
        body: Container(
          child: Center(
            child: Text("The Dummy:\n}"),
          ),
        ));
  }
}
