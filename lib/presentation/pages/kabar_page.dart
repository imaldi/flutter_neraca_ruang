import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class KabarPage extends ConsumerStatefulWidget {
  const KabarPage({Key? key}) : super(key: key);

  @override
  _KabarPageState createState() => _KabarPageState();
}

class _KabarPageState extends ConsumerState<KabarPage> {
  @override
  Widget build(BuildContext context) {
    var kabarTerbaru = ref.watch(kabarProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text("Kabar"),
      ),
      body: kabarTerbaru.when(data: (data) {
        return Text("data: ${data}");
      }, error: (o, st) {
        return Text("Ada Error");
      }, loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }),
    );
  }
}
