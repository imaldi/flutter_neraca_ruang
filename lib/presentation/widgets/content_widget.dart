import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    var isGreenMode = ref.watch(kotaIdProvider) != 0;

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
                onTap: isGreenMode
                    ? () {
                        ref.read(kotaIdProvider.notifier).state = 0;
                        ref.read(kotaNameProvider.notifier).state = "";
                        ref.read(tagsIdProvider.notifier).state = 0;
                        ref.read(tagsNameProvider.notifier).state = "";
                      }
                    : () {
                        ref.read(kotaIdProvider.notifier).state =
                            content.kotaId ?? 0;
                        ref.read(kotaNameProvider.notifier).state =
                            content.kotaName ?? "";
                      },
                child: isGreenMode
                    // ? Text(content.tipe ?? "Kosong")
                    ? SizedBox(
                        height: huge,

                        /// ngasih FittedBox di dalam parent yg ga kasih constraint bakal eror (Row, Column, dll)
                        child: FittedBox(
                            child: IconWidget(
                                menuIconNameChooser(content.tipe ?? ""))))
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.location_city),
                          Text(content.kotaName ?? "")
                        ],
                      ),
              ),
              SizedBox(
                height: huge,
                child: FittedBox(
                  child: Row(
                    children: [
                      IconWidget(
                        content.tagsPihak?.tagsIcon ?? "",
                        isOnlineSource: true,
                        onTap: () {
                          ref.read(tagsIdProvider.notifier).state =
                              content.tagsPihak?.tagsId ?? 0;
                          ref.read(kotaNameProvider.notifier).state =
                              content.tagsPihak?.tagsName ?? "";
                        },
                      ),
                      IconWidget(
                        content.tagsTopik?.tagsIcon ?? "",
                        isOnlineSource: true,
                        onTap: () {
                          ref.read(tagsIdProvider.notifier).state =
                              content.tagsTopik?.tagsId ?? 0;
                          ref.read(kotaNameProvider.notifier).state =
                              content.tagsTopik?.tagsName ?? "";
                        },
                      ),
                      IconWidget(
                        content.tagsOtonomi?.tagsIcon ?? "",
                        isOnlineSource: true,
                        onTap: () {
                          ref.read(tagsIdProvider.notifier).state =
                              content.tagsOtonomi?.tagsId ?? 0;
                          ref.read(kotaNameProvider.notifier).state =
                              content.tagsOtonomi?.tagsName ?? "";
                        },
                      ),
                    ],
                  ),
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
              Text(
                '${content.judul}',
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              Text(
                "${content.keterangan}",
                maxLines: 7,
                overflow: TextOverflow.ellipsis,
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
                    iconForum,
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
                    iconForum,
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
                    iconForum,
                    size: huge,
                  )),
                  Expanded(
                      child: Wrap(
                    children: [
                      Text("${content.totalComment ?? "0"} "),
                      Text(
                        "Comments",
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
