import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/assets.dart';
import 'package:flutter_neraca_ruang/core/consts/colors.dart';
import 'package:flutter_neraca_ruang/core/router/app_router.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/dashboard_providers.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/IconWidget.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/button_load_more.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/content_widget.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/green_mode_appbar_widget.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/green_mode_bottom_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/num_consts.dart';
import '../../core/consts/sizes.dart';
import '../../core/helper_functions/basic_will_pop_scope.dart';
import '../../di.dart';
import '../../logic/state_management/riverpod/all_content_list_providers.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/bottom_bar_widget.dart';
import '../widgets/social_media_panel_widget.dart';
import '../widgets/tab_menu_item.dart';

@RoutePage()
class GreenPage extends ConsumerStatefulWidget {
  const GreenPage({Key? key}) : super(key: key);

  @override
  GreenPageState createState() => GreenPageState();
}

class GreenPageState extends ConsumerState<GreenPage> {
  // @override
  // void initState() {
  //   super.initState();
  //   ref.read(contentsProvider.notifier).fetchContent(type: "", limit: 3);
  // }
  //
  // @override
  // void dispose() {
  //   basicResetStates(context, ref);
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    // var kabarTerbaru = ref.watch(kabarProvider);
    var greenContent = ref.watch(contentsProvider);
    var kotaName = ref.watch(kotaNameProvider);
    var tagName = ref.watch(tagsNameProvider);
    var iconUrl = ref.watch(tagsIconLinkProvider);
    var appbarTitle = (kotaName ?? "").isNotEmpty
        ? kotaName
        //     :
        // tagName.isNotEmpty ? tagName
        : null;

    return DefaultTabController(
      length: greenTabLength,
      child: WillPopScope(
        onWillPop: () {
          return basicOnWillPop(context, ref);
        },
        child: Scaffold(
          appBar: appBarWidget(context,
              ref: ref,
              appbarTitle: appbarTitle,
              appbarBackgroundImage: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: IconWidget(
                        // 'assets/icons/icon_daerah/${appbarTitle?.toLowerCase().replaceAll(" ", "_")}_2.png',
                        iconUrl,
                        size: huge + medium,
                        isOnlineSource: true,
                        customOnErrorWidget: Column(
                          children: [
                            const Icon(
                              Icons.location_city,
                              color: Color(greenModeColor),
                            ),
                            Text(
                              appbarTitle ?? "",
                              style:
                                  const TextStyle(color: Color(greenModeColor)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              isGreenMode: true,
              tabsChild: [
                Image.asset(iconOtoTr),
                Image.asset(iconKonsTr),
                Image.asset(iconMadaTr),
              ], resetStates: () {
            basicResetStates(context, ref);
          }),
          body: Stack(
            children: [
              greenContent.when(data: (data) {
                var contentList = data;
                if (contentList != null && contentList.isEmpty) {
                  return const Center(
                    child: Text("Data Tidak ditemukan"),
                  );
                }
                if (contentList == null) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: Color(greenModeColor),
                    ),
                  );
                }
                return SafeArea(
                  child: SingleChildScrollView(
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
                                return ContentWidget(
                                  contentList[i],
                                  isGreenMode: true,
                                );
                              }),
                          ButtonLoadMore(),
                          SocialMediaPanelWidget(
                            isGreenMode: true,
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
                  child: CircularProgressIndicator(
                    color: Color(greenModeColor),
                  ),
                );
              }),
              Positioned(bottom: 0, child: GreenModeBottomBar()),
            ],
          ),
        ),
      ),
    );
  }
}
