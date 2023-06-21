import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/my_toast.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/dashboard_response/dashboard_response.dart';
import '../../logic/state_management/riverpod/all_content_list_providers.dart';
import '../../logic/state_management/riverpod/dashboard_providers.dart';

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
    var contentIndex = ref.watch(currentLikedOrDislikedContentIndexProvider);
    // var dataDashboard = ref.watch(dashBoardProvider);
    var list = ref.watch(contentsProvider);
    ref.listen(contentsProvider, (previous, next) {
      var currentItem = next.value?[contentIndex];
      var previousItem = previous?.value?[contentIndex];
      if (previousItem?.localLike == false && currentItem?.localLike == true) {
        print("content is liked");
        myToast("content liked successfully");
      }

      if (previousItem?.localLike == true && currentItem?.localLike == false) {
        print("content is disliked");
        myToast("content disliked successfully");
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text("Halow"),
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
            child: list.when(
                data: (data) {
                  return ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (c, i) {
                        return Builder(builder: (context) {
                          return Card(
                            child: Column(
                              children: [
                                Text("Data ke: ${i + 1}"),
                                Text(data[i].judul.toString()),
                                InkWell(
                                  onTap: () {
                                    ref
                                        .read(
                                            currentLikedOrDislikedContentIndexProvider
                                                .notifier)
                                        .state = i;
                                    ref
                                        .read(contentsProvider.notifier)
                                        .likeContent(data[i]);
                                  },
                                  child: data[i].localLike
                                      ? Icon(Icons.thumb_up)
                                      : Icon(Icons.thumb_up_alt_outlined),
                                ),
                              ],
                            ),
                          );
                        });
                      });
                },
                error: (e, s) {
                  Text("Error Brih");
                },
                loading: () => const CircularProgressIndicator())

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
