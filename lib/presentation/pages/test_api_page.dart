import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/comment_widget.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/content_widget.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/image_picker/my_image_picker.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/my_toast.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/colors.dart';
import '../../data/models/dashboard_response/dashboard_response.dart';
import '../../di.dart';
import '../../logic/state_management/riverpod/all_content_list_providers.dart';
import '../../logic/state_management/riverpod/dashboard_providers.dart';
import '../widgets/searchable_dropdown.dart';

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
    var contentIndex = ref.watch(currentLikedOrDislikedContentIndexProvider);
    // var dataDashboard = ref.watch(dashBoardProvider);
    var list = ref.watch(contentsProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text("Heyyy"),
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
            child: SingleChildScrollView(
          controller: sl<ScrollController>(),
          child: Column(
            children: [
              MyImagePickerWidget(),
            ],
          ),
        )

            // fotoTerbaru.when(
            //     data: (foto) {
            //       return Text(foto.toJson().toString());
            //     },
            //     error: (err, stack) {
            //       return Text("Ada Error");
            //     },
            //     loading: () => const CircularProgressIndicator()),
            ),
      ),
    );
  }
}
