import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_neraca_ruang/core/consts/num_consts.dart';
import 'package:flutter_neraca_ruang/core/router/app_router.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/all_content_list_providers.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/dashboard_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/colors.dart';
import '../../core/consts/sizes.dart';
import '../../core/helper_functions/basic_will_pop_scope.dart';
import '../../data/models/dashboard_response/dashboard_response.dart';
import '../../di.dart';
import '../widgets/IconWidget.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/bottom_bar_widget.dart';
import '../widgets/button_load_more.dart';
import '../widgets/content_widget.dart';
import '../widgets/eits_bayar_dulu.dart';
import '../widgets/main_drawer.dart';
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
    SchedulerBinding.instance.addPostFrameCallback((_) => showBayarDialog(context));
    super.initState();
  }
  //
  // @override
  // void dispose() {
  //   basicResetStates(context, ref);
  //   super.dispose();
  // }
  var scaffoldKey = GlobalKey<ScaffoldState>();

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
        child: SafeArea(
          child: Scaffold(
            key: scaffoldKey,
            drawer: MainDrawer(),
            appBar: appBarWidget(context,
                ref: ref,
                scaffoldKey: scaffoldKey,
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
              if (contentList == null || contentList.length == 0) {
                return Stack(
                  children: [
                    const Center(
                      child: Text("Data Tidak ditemukan"),
                    ),
                    Positioned(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: medium),
                        child: SocialMediaPanelWidget(),
                      ),
                    )
                  ],
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
                          itemCount: contentList?.length ?? 0,
                          itemBuilder: (c, i) {
                            return ContentWidget(contentList?[i] ?? Datum());
                          }),
                      ButtonLoadMore(),
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
