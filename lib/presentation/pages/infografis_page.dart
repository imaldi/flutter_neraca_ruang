import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/dashboard_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/num_consts.dart';
import '../../core/consts/sizes.dart';
import '../../core/helper_functions/basic_will_pop_scope.dart';
import '../../core/router/app_router.dart';
import '../widgets/IconWidget.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/bottom_bar_widget.dart';
import '../widgets/content_widget.dart';
import '../widgets/green_mode_appbar_widget.dart';

@RoutePage()
class InfografisPage extends ConsumerStatefulWidget {
  const InfografisPage({Key? key}) : super(key: key);

  @override
  _InfografisPageState createState() => _InfografisPageState();
}

class _InfografisPageState extends ConsumerState<InfografisPage> {
  @override
  Widget build(BuildContext context) {
    var infografisTerbaru = ref.watch(infografisProvider);
    var kotaName = ref.watch(kotaNameProvider);
    var tagName = ref.watch(tagsNameProvider);
    var iconUrl = ref.watch(tagsIconLinkProvider);
    var appbarTitle =
        // kotaName.isNotEmpty
        //     ? kotaName
        //     :
        tagName.isNotEmpty ? tagName : null;

    return DefaultTabController(
      length: mainTabLength,
      child: WillPopScope(
        onWillPop: () {
          return basicOnWillPop(context, ref);
        },
        child: Scaffold(
          appBar: appBarWidget(context,
              appbarTitle: appbarTitle,
              appbarBackgroundImage: Opacity(
                opacity: 0.3,
                child: IconWidget(
                  iconUrl,
                  size: huge + medium,
                  isOnlineSource: true,
                ),
              ), resetStates: () {
            basicResetStates(context, ref);
          }),
          body: infografisTerbaru.when(data: (data) {
            var contentList = data.data?.data;
            if (contentList == null || contentList.isEmpty) {
              return const Center(
                child: Text("Data Tidak ditemukan"),
              );
            }
            return SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: extra),
                  child: Column(
                    children: [
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: contentList.length,
                          itemBuilder: (c, i) {
                            return ContentWidget(
                              contentList[i],
                              isInfografis: true,
                            );
                          }),
                      InkWell(
                        onTap: () {
                          ref.read(limitProvider.notifier).state++;
                        },
                        child: Container(
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
            return Center(
              child: Text("There is an Error"),
            );
          }, loading: () {
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
          bottomNavigationBar: const BottomBarWidget(),
        ),
      ),
    );
  }
}
