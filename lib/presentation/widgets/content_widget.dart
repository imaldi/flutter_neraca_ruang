import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/colors.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/dashboard_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:html/parser.dart';

import '../../core/consts/assets.dart';
import '../../core/consts/sizes.dart';
import '../../core/consts/urls.dart';
import '../../core/helper_functions/menu_icon_name_chooser.dart';
import '../../data/models/dashboard_response/dashboard_response.dart';
import 'IconWidget.dart';

class ContentWidget extends ConsumerWidget {
  final Datum content;
  final bool isUsingThumbnail;
  const ContentWidget(this.content, {this.isUsingThumbnail = false, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var contentId = ref.watch(selectedContentIdProvider);
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: normal),
          constraints: BoxConstraints(
            maxHeight: 200,
            minWidth: MediaQuery.of(context).size.width,
          ),
          child: Image.network(
            isUsingThumbnail
                ? "https://$thumbnailUrl/${content.thumbnail}"
                : "https://$contentUrl/${content.images}",
            fit: BoxFit.cover,
            errorBuilder: (bc, o, st) {
              return Text(content.images ?? "");
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: medium),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap:
                    // isGreenMode
                    //     ? () {
                    //         ref.read(kotaIdProvider.notifier).state = 0;
                    //         ref.read(kotaNameProvider.notifier).state = "";
                    //         ref.read(tagsIdProvider.notifier).state = 0;
                    //         ref.read(tagsNameProvider.notifier).state = "";
                    //       }
                    //     :
                    () {
                  /// FIXME ga tau kenapa disini ada pesan error
                  ref.read(kotaIdProvider.notifier).state = content.kotaId ?? 0;
                  ref.read(kotaNameProvider.notifier).state =
                      content.kotaName ?? "";
                  ref.read(tagsIdProvider.notifier).state = 0;
                  ref.read(tagsNameProvider.notifier).state = "";
                },
                child:
                    // isGreenMode
                    //     ? SizedBox(
                    //         height: huge,
                    //
                    //         /// ngasih FittedBox di dalam parent yg ga kasih constraint bakal eror (Row, Column, dll)
                    //         child: FittedBox(
                    //             child: IconWidget(
                    //                 menuIconNameChooser(content.tipe ?? ""))))
                    //     :
                    Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.location_city),

                    /// TODO handle about the right icon for the right city
                    // IconWidget(
                    //   'assets/icons/icon_daerah/${content.kotaName?.toLowerCase().replaceAll(" ", "_")}_1',
                    // ),
                    Text(content.kotaName ?? "")
                  ],
                ),
              ),
              SizedBox(
                height: huge,

                /// sebelumnya ada error disini karena row di bungkus dengan fitted box, jangan pakai begitu lagi
                child: Row(
                  children: [
                    IconWidget(
                      content.tagsPihak?.tagsIcon ?? "",
                      isOnlineSource: true,
                      onTap: () {
                        ref.read(tagsIdProvider.notifier).state =
                            content.tagsPihak?.tagsId ?? 0;
                        ref.read(tagsNameProvider.notifier).state =
                            content.tagsPihak?.tagsName ?? "";
                        ref.read(tagsIconLinkProvider.notifier).state =
                            content.tagsPihak?.tagsIcon ?? "";
                      },
                    ),
                    IconWidget(
                      content.tagsTopik?.tagsIcon ?? "",
                      isOnlineSource: true,
                      onTap: () {
                        ref.read(tagsIdProvider.notifier).state =
                            content.tagsTopik?.tagsId ?? 0;
                        ref.read(tagsNameProvider.notifier).state =
                            content.tagsTopik?.tagsName ?? "";
                        ref.read(tagsIconLinkProvider.notifier).state =
                            content.tagsTopik?.tagsIcon ?? "";
                      },
                    ),
                    IconWidget(
                      content.tagsOtonomi?.tagsIcon ?? "",
                      isOnlineSource: true,
                      onTap: () {
                        ref.read(tagsIdProvider.notifier).state =
                            content.tagsOtonomi?.tagsId ?? 0;
                        ref.read(tagsNameProvider.notifier).state =
                            content.tagsOtonomi?.tagsName ?? "";
                        ref.read(tagsIconLinkProvider.notifier).state =
                            content.tagsOtonomi?.tagsIcon ?? "";
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(medium),
          child: Column(
            children: [
              Text(
                '${content.sourceName ?? ""} 26/05/2023, 12:00 WIB',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              InkWell(
                onTap: () {
                  ref.read(selectedContentIdProvider.notifier).state =
                      content.id ?? 0;
                },
                child: Text(
                  '${content.judul}',
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                constraints: contentId == (content.id ?? -1)
                    ? null
                    : const BoxConstraints(maxHeight: 200),
                child: SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: HtmlWidget(
                    "${content.keterangan}",
                    textStyle: TextStyle(color: Color(primaryTextColor)),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(medium),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Flexible(
                      child: IconWidget(
                    iconDibaca,
                    size: huge,
                  )),
                  Expanded(
                      child: Wrap(
                    children: [
                      Text("${content.totalRead ?? "0"} "),
                      const Text("Reads"),
                    ],
                  ))
                ],
              ),
              Row(
                children: [
                  const Flexible(
                      child: IconWidget(
                    iconSuka,
                    size: huge,
                  )),
                  Expanded(
                      child: Wrap(
                    children: [
                      Text("${content.totalLike ?? "0"} "),
                      Text("Likes"),
                    ],
                  ))
                ],
              ),
              Row(
                children: [
                  const Flexible(
                      child: IconWidget(
                    iconCommments,
                    size: huge,
                  )),
                  Expanded(
                      child: Wrap(
                    children: [
                      Text("${content.totalComment ?? "0"} "),
                      const FittedBox(
                        child: Text(
                          "Comments",
                        ),
                      ),
                    ],
                  ))
                ],
              ),
              const IconWidget(
                iconForum,
                size: huge,
              ),
            ]
                .map((e) => Expanded(
                      child: e,
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
