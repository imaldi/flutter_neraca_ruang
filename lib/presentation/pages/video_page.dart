import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/all_content_list_providers.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/social_media_panel_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/colors.dart';
import '../../core/consts/num_consts.dart';
import '../../core/consts/sizes.dart';
import '../../core/helper_functions/basic_will_pop_scope.dart';
import '../../core/router/app_router.dart';
import '../../di.dart';
import '../../logic/state_management/riverpod/dashboard_providers.dart';
import '../widgets/IconWidget.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/bottom_bar_widget.dart';
import '../widgets/button_load_more.dart';
import '../widgets/content_widget.dart';
import '../widgets/main_drawer.dart';

@RoutePage()
class VideoPage extends ConsumerStatefulWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends ConsumerState<VideoPage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var videoTerbaru = ref.watch(contentsProvider);
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
      child: SafeArea(
        child: Scaffold(
          key: sl<GlobalKey<ScaffoldState>>(),
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
          body: videoTerbaru.when(data: (data) {
            var contentList = data;
            if (contentList != null && contentList.isEmpty) {
              return const Center(
                child: Text("Data Tidak ditemukan"),
              );
            }
            if (contentList == null) {
              return const Center(
                child: CircularProgressIndicator(
                  color: Color(primaryColor),
                ),
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
                            );
                          }),
                      ButtonLoadMore(),
                      SocialMediaPanelWidget()
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
