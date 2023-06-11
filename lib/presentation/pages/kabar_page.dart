import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/router/app_router.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/providers.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/content_widget.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/green_mode_appbar_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/num_consts.dart';
import '../../core/consts/sizes.dart';
import '../../core/helper_functions/basic_will_pop_scope.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/bottom_bar_widget.dart';

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
    var isGreenMode = ref.watch(kotaIdProvider) != 0;

    return DefaultTabController(
      length: mainTabLength,
      child: WillPopScope(
        onWillPop: () {
          return basicOnWillPop(context, ref);
        },
        child: Scaffold(
          appBar: appBarWidget(context, isGreenMode),
          body: kabarTerbaru.when(data: (data) {
            var contentList = data.data?.data;
            return SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: extra),
                  child: Column(
                    children: [
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: contentList?.length,
                          itemBuilder: (c, i) {
                            return ContentWidget(contentList![i]);
                          }),
                      Container(
                        padding: const EdgeInsets.all(medium),
                        margin: const EdgeInsets.symmetric(vertical: medium),
                        decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(extra))),
                        child: Text(
                          "LOAD MORE",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/icon_facebook.png"),
                                Image.asset("assets/images/icon_ig.png"),
                                Image.asset("assets/images/icon_twitter.png"),
                                Image.asset("assets/images/icon_tiktok.png"),
                                Image.asset("assets/images/icon_youtube.png"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "neracaruang@neracaruang.com",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                      decoration: TextDecoration.underline),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "Copyright © PT. Semesta Teknologi Indonesia",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          }, error: (o, st) {
            return const Text("Ada Error");
          }, loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
          bottomNavigationBar: isGreenMode ? null : const BottomBarWidget(),
        ),
      ),
    );
  }
}
