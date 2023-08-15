import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/all_content_list_providers.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/dashboard_providers.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/liked_content_list.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/IconWidget.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/content_widget.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/green_mode_appbar_widget.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/main_drawer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/num_consts.dart';
import '../../core/consts/sizes.dart';
import '../../core/helper_functions/basic_will_pop_scope.dart';
import '../../data/models/dashboard_response/dashboard_response.dart';
import '../../di.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/bottom_bar_widget.dart';
import '../widgets/button_load_more.dart';

import '../widgets/my_toast.dart';
import '../widgets/social_media_panel_widget.dart';

@RoutePage()
class KabarPage extends ConsumerStatefulWidget {
  const KabarPage({Key? key}) : super(key: key);

  @override
  _KabarPageState createState() => _KabarPageState();
}

class _KabarPageState extends ConsumerState<KabarPage> {
  
  //
  // @override
  // void dispose() {
  //   basicResetStates(context, ref);
  //   super.dispose();
  // }
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // var kabarTerbaru = ref.watch(kabarProvider);
    var kabarTerbaru = ref.watch(contentsProvider);
    var kotaName = ref.watch(kotaNameProvider);
    var tagName = ref.watch(tagsNameProvider);
    var iconUrl = ref.watch(tagsIconLinkProvider);
    // var likedContent = ref.watch(likedContentListProviderProvider);
    var appbarTitle =
        // kotaName.isNotEmpty
        //     ? kotaName
        //     :
        tagName.isNotEmpty ? tagName : null;
    // ref.listen(tipeKontenProvider, (previous, next) {
    //   myToast("tipe: $next");
    //   if (next == "kabar") {
    //     ref.read(contentsProvider.notifier).fetchContent(
    //           "kabar page",
    //           type: "kabar",
    //         );
    //   }
    // });
    return DefaultTabController(
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
          body: kabarTerbaru.when(data: (data) {
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
            return const Text("Ada Error");
          }, loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
          bottomNavigationBar: const BottomBarWidget(),
        ),
      ),
    );
  }
}
