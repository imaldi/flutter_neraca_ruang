import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/assets.dart';
import 'package:flutter_neraca_ruang/core/consts/colors.dart';
import 'package:flutter_neraca_ruang/core/router/app_router.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/all_content_list_providers.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/dashboard_providers.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/liked_content_list.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/IconWidget.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/content_widget.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/green_mode_appbar_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/num_consts.dart';
import '../../core/consts/sizes.dart';
import '../../core/helper_functions/basic_will_pop_scope.dart';
import '../../di.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/bottom_bar_widget.dart';
import '../widgets/my_toast.dart';
import '../widgets/social_media_panel_widget.dart';

@RoutePage()
class KabarPage extends ConsumerStatefulWidget {
  const KabarPage({Key? key}) : super(key: key);

  @override
  _KabarPageState createState() => _KabarPageState();
}

class _KabarPageState extends ConsumerState<KabarPage> {
  // @override
  // void initState() {
  //   super.initState();
  //   ref.read(contentsProvider.notifier).fetchContent(type: "kabar", limit: 3);
  // }
  //
  // @override
  // void dispose() {
  //   basicResetStates(context, ref);
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    var kabarTerbaru = ref.watch(kabarProvider);
    // var kabarTerbaru = ref.watch(contentsProvider);
    var kotaName = ref.watch(kotaNameProvider);
    var tagName = ref.watch(tagsNameProvider);
    var iconUrl = ref.watch(tagsIconLinkProvider);
    var likedContent = ref.watch(likedContentListProviderProvider);
    var appbarTitle =
        // kotaName.isNotEmpty
        //     ? kotaName
        //     :
        tagName.isNotEmpty ? tagName : null;

    return DefaultTabController(
      length: mainTabLength,
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
        body: kabarTerbaru.when(data: (data) {
          var contentList = data.data?.data ?? [];
          if (contentList.isEmpty) {
            return const Center(
              child: Text("Data Tidak ditemukan"),
            );
          }
          // if (contentList == null) {
          //   return const Center(
          //     child: CircularProgressIndicator(
          //       color: Color(primaryColor),
          //     ),
          //   );
          // }
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
                          return ContentWidget(contentList[i]);
                        }),
                    InkWell(
                      onTap: () {
                        ref.read(limitProvider.notifier).state++;
                        myToast("limit value: ${ref.watch(limitProvider)}");
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
    );
  }
}
