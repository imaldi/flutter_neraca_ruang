import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../logic/state_management/riverpod/providers.dart';

@RoutePage()
class TestApiPage extends ConsumerStatefulWidget {
  const TestApiPage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _TestApiPageState();
}

class _TestApiPageState extends ConsumerState<TestApiPage> {
  @override
  void initState() {
    super.initState();
    ref.read(fotoProvider);
  }

  @override
  Widget build(BuildContext context) {
    var fotoTerbaru = ref.watch(fotoProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text("Halow"),
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: fotoTerbaru.when(
              data: (foto) {
                return Text(foto.toString());
              },
              error: (err, stack) {
                return Text("Ada Error");
              },
              loading: () => const CircularProgressIndicator()),
        ),
      ),
    );
  }
}