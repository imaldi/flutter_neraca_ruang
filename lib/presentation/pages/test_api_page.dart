import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/content_widget.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/my_toast.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/dashboard_response/dashboard_response.dart';
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
            child: list.when(
                data: (data) {
                  return ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (c, i) {
                        return ContentWidget(data[i]);
                        // return Card(
                        //   child: Column(
                        //     children: [
                        //       Text("Data ke: ${i + 1}"),
                        //       Text(data[i].judul.toString()),
                        //       Row(
                        //         mainAxisAlignment: MainAxisAlignment.center,
                        //         children: [
                        //           InkWell(
                        //             onTap: () {
                        //               ref
                        //                   .read(
                        //                       currentLikedOrDislikedContentIndexProvider
                        //                           .notifier)
                        //                   .state = i;
                        //             },
                        //             child: (data[i].localLike ?? false)
                        //                 ? InkWell(
                        //                     onTap: () {
                        //                       ref
                        //                           .read(contentsProvider
                        //                               .notifier)
                        //                           .likeContent(data[i]
                        //                               .copyWith(
                        //                                   localLike: false));
                        //                     },
                        //                     child: Icon(Icons.thumb_up))
                        //                 : InkWell(
                        //                     onTap: () {
                        //                       ref
                        //                           .read(contentsProvider
                        //                               .notifier)
                        //                           .likeContent(data[i]
                        //                               .copyWith(
                        //                                   localLike: true));
                        //                     },
                        //                     child: Icon(
                        //                         Icons.thumb_up_alt_outlined)),
                        //           ),
                        //           Text("${data[i].totalLike} Likes")
                        //         ],
                        //       ),
                        //     ],
                        //   ),
                        // );
                      });
                },
                error: (e, s) {
                  Text("Error Bruh");
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
