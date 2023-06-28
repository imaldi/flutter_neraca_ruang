import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/num_consts.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/active_forum_providers.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/appbar_widget.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/bottom_bar_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/sizes.dart';
import '../../di.dart';
import '../../logic/state_management/riverpod/dashboard_providers.dart';
import '../widgets/content_widget.dart';
import '../widgets/forum_content_widget.dart';
import '../widgets/main_drawer.dart';
import '../widgets/social_media_panel_widget.dart';

@RoutePage()
class DiskusiPage extends ConsumerStatefulWidget {
  const DiskusiPage({Key? key}) : super(key: key);

  @override
  _DiskusiPageState createState() => _DiskusiPageState();
}

class _DiskusiPageState extends ConsumerState<DiskusiPage> {
  @override
  Widget build(BuildContext context) {
    var diskusiList = ref.watch(activeForumsProvider);
    return DefaultTabController(
        length: mainTabLength,
        child: Scaffold(
          appBar: appBarWidget(context, ref: ref),
          drawer: MainDrawer(),
          bottomNavigationBar: BottomBarWidget(),
          body: diskusiList.when(data: (data) {
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
                          return ForumContentWidget(contentList[i]);
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
        ));
  }
}
