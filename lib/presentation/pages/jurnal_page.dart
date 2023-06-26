import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/num_consts.dart';
import 'package:flutter_neraca_ruang/core/router/app_router.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/all_content_list_providers.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/dashboard_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/sizes.dart';
import '../../core/helper_functions/basic_will_pop_scope.dart';
import '../../di.dart';
import '../widgets/IconWidget.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/bottom_bar_widget.dart';
import '../widgets/content_widget.dart';
import '../widgets/social_media_panel_widget.dart';

@RoutePage()
class JurnalPage extends ConsumerStatefulWidget {
  const JurnalPage({Key? key}) : super(key: key);

  @override
  _JurnalPageState createState() => _JurnalPageState();
}

class _JurnalPageState extends ConsumerState<JurnalPage> {
  @override
  void initState() {
    super.initState();
    ref.read(contentsProvider.notifier).fetchContent(type: "jurnal", limit: 3);
  }

  @override
  Widget build(BuildContext context) {
    var jurnalTerbaru = ref.watch(contentsProvider);
    var kotaName = ref.watch(kotaNameProvider);
    var tagName = ref.watch(tagsNameProvider);
    var iconUrl = ref.watch(tagsIconLinkProvider);

    var appbarTitle =
        // kotaName.isNotEmpty
        //     ? kotaName
        //     :
        tagName.isNotEmpty ? tagName : null;

    return SafeArea(
      top: false,
      child: DefaultTabController(
        length: mainTabLength,
        child: WillPopScope(
          onWillPop: () {
            return basicOnWillPop(context, ref);
          },
          child: Scaffold(
            appBar: appBarWidget(context,
                ref: ref,
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
            body: jurnalTerbaru.when(data: (data) {
              var contentList = data;
              if (contentList.isEmpty) {
                return Center(
                  child: Text("Data Tidak ditemukan"),
                );
              }
              return SingleChildScrollView(
                controller: sl<ScrollController>(),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: extra),
                  child: Column(
                    children: [
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: contentList.length,
                          itemBuilder: (c, i) {
                            return ContentWidget(contentList![i]);
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
                      SocialMediaPanelWidget(),
                    ],
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
      ),
    );
  }
}
