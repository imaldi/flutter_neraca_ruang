import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neraca_ruang/logic/state_management/cubit_bloc/dashboard/dashboard_cubit.dart';

import '../../core/consts/sizes.dart';
import '../../data/models/dashboard_response/dashboard_response.dart';

@RoutePage()
class DatumTypeFilterPage extends StatefulWidget implements AutoRouteWrapper {
  const DatumTypeFilterPage({Key? key}) : super(key: key);

  @override
  _DatumTypeFilterPageState createState() => _DatumTypeFilterPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    // TODO: implement wrappedRoute
    return BlocProvider<DashboardCubit>(
        create: (bc) => DashboardCubit(), child: this);
  }
}

class _DatumTypeFilterPageState extends State<DatumTypeFilterPage> {
  @override
  void initState() {
    super.initState();
    context.read<DashboardCubit>().fetchDashboardContent();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Halaman Filtered List"),
        ),
        body: BlocBuilder<DashboardCubit, DashboardState>(
            builder: (context, state) {
          var theContentList = state.listContentDashboard ?? <Datum>[];
          return ListView.builder(
              itemCount: theContentList.length,
              itemBuilder: (c, i) => Card(
                    child: Padding(
                      padding: const EdgeInsets.all(normal),
                      child: Text("${theContentList[i].judul}"),
                    ),
                  ));
        }));
  }
}
