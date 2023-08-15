import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_neraca_ruang/core/consts/num_consts.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/active_forum_providers.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/archived_forum_providers.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/appbar_widget.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/bottom_bar_widget.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/my_toast.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/searchable_dropdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../core/consts/colors.dart';
import '../../core/consts/sizes.dart';
import '../../di.dart';
import '../../logic/state_management/riverpod/dashboard_providers.dart';
import '../widgets/button_load_more.dart';
import '../widgets/content_widget.dart';

import '../widgets/forum_content_widget.dart';
import '../widgets/main_drawer.dart';
import '../widgets/social_media_panel_widget.dart';
import '../widgets/usulan_diskusi_widget.dart';

@RoutePage()
class DiskusiPage extends ConsumerStatefulWidget {
  const DiskusiPage({Key? key}) : super(key: key);

  @override
  _DiskusiPageState createState() => _DiskusiPageState();
}

class _DiskusiPageState extends ConsumerState<DiskusiPage> {
  
  @override
  Widget build(BuildContext context) {
    final textColor = Color(primaryColor);
    final textStyle = TextStyle(color: textColor, fontWeight: FontWeight.w500);
    var diskusiList = ref.watch(activeForumsProvider);
    ref.listen(archivedForums, (previous, next) {
      if (next.hasValue && (next.value ?? []).isNotEmpty) {
        print("masuk if nya");
        ref.read(archivedValuesProvider.notifier).addAll((next.value ?? [])
            .asMap()
            .map((k, v) => MapEntry(v.threadId ?? 0,
                "${v.threadSubject}, ${v.moderatorName}, ${DateFormat("dd/mm/yyyy").format(v.threadDate ?? DateTime.now())}")));
      }
    });
    var archiveMap = ref.watch(archivedValuesProvider);
    var listArchive = archiveMap.values.toSet();
    return DefaultTabController(
        length: mainTabLength,
        child: Scaffold(
          appBar: appBarWidget(context, ref: ref),
          drawer: MainDrawer(),
          bottomNavigationBar: BottomBarWidget(),
          body: SingleChildScrollView(
            controller: sl<ScrollController>(),
            child: Padding(
              padding: const EdgeInsets.only(bottom: extra),
              child: Column(
                children: [
                  // Text(
                  //   "USULAN DISKUSI",
                  //   style: textStyle.copyWith(fontSize: big),
                  // ),
                  diskusiList.when(data: (data) {
                    var contentList = data;
                    if (contentList.isEmpty) {
                      return Container(
                        height: 300,
                        child: Center(
                          child: Text("Data Tidak ditemukan"),
                        ),
                      );
                    }
                    return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: contentList.length,
                        itemBuilder: (c, i) {
                          return ForumContentWidget(contentList[i]);
                        });
                  }, error: (o, st) {
                    return Center(
                      child: Text("There is an Error"),
                    );
                  }, loading: () {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }),
                  UsulanDiskusiWidget(),
                  Text(
                    "PUSTAKA DISKUSI TERDAHULU",
                    style: textStyle.copyWith(fontSize: big),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: medium),
                    child: SearchableDropdown(
                      listArchive,
                      selectedArchiveValue,
                      borderRadius: 0,
                      onItemTapped: (val) {
                        ref.read(selectedArchiveValue.notifier).state = val;
                        var theKeyId = archiveMap.keys.firstWhere(
                            (element) => archiveMap[element] == val,
                            orElse: null);
                        ref.read(selectedArchiveId.notifier).state = theKeyId;
                        // myToast("theKeyId: $theKeyId");
                      },
                    ),
                  ),

                  /// TODO pastikan ini work di diskusi page
                  ButtonLoadMore(),

                  SocialMediaPanelWidget(),
                ],
              ),
            ),
          ),
        ));
  }
}
