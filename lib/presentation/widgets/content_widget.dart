import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/colors.dart';
import 'package:flutter_neraca_ruang/core/router/app_router.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/dashboard_providers.dart';
import 'package:flutter_neraca_ruang/presentation/pages/green_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:html/parser.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../core/consts/assets.dart';
import '../../core/consts/sizes.dart';
import '../../core/consts/urls.dart';
import '../../core/helper_functions/basic_will_pop_scope.dart';
import '../../core/helper_functions/menu_icon_name_chooser.dart';
import '../../core/helper_functions/route_chooser.dart';
import '../../data/models/dashboard_response/dashboard_response.dart';
import 'IconWidget.dart';

class ContentWidget extends ConsumerWidget {
  final Datum content;
  final bool isUsingThumbnail;
  final bool isGreenMode;
  final bool isVideoMode;
  final bool isInfografis;
  const ContentWidget(this.content,
      {this.isUsingThumbnail = false,
      this.isVideoMode = false,
      this.isGreenMode = false,
      this.isInfografis = false,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var contentId = ref.watch(selectedContentIdProvider);
    return Column(
      children: [
        Container(
          // color: Colors.green,
          margin: const EdgeInsets.only(bottom: normal),
          constraints: BoxConstraints(
            minHeight: 200,
            maxHeight: 200,
            minWidth: MediaQuery.of(context).size.width,
          ),
          child: isVideoMode
              ? YoutubePlayer(
                  controller: YoutubePlayerController(
                      initialVideoId:
                          YoutubePlayer.convertUrlToId(content.videoUrl ?? "")!,
                      flags: const YoutubePlayerFlags(autoPlay: false)),
                  showVideoProgressIndicator: true,
                )
              :
              // ? Center(child: Builder(builder: (context) {
              //     YoutubePlayerController _controller = YoutubePlayerController(
              //       initialVideoId: 'iLnmTe5Q2Qw',
              //       flags: YoutubePlayerFlags(
              //         autoPlay: true,
              //         mute: true,
              //       ),
              //     );
              //     late PlayerState _playerState;
              //     late YoutubeMetaData _videoMetaData;
              //     double _volume = 100;
              //     bool _muted = false;
              //     bool _isPlayerReady = false;
              //     void listener() {
              //       if (_isPlayerReady &&
              //           mounted &&
              //           !_controller.value.isFullScreen) {
              //         setState(() {
              //           _playerState = _controller.value.playerState;
              //           _videoMetaData = _controller.metadata;
              //         });
              //       }
              //     }
              //
              //     return
              //       YoutubePlayer(
              //       controller: _controller,
              //       showVideoProgressIndicator: true,
              //       progressIndicatorColor: Colors.amber,
              //       progressColors: const ProgressBarColors(
              //         playedColor: Colors.amber,
              //         handleColor: Colors.amberAccent,
              //       ),
              //       onReady: () {
              //         _controller.addListener(listener);
              //       },
              //     );
              //   }))
              // :
              isInfografis
                  ? ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: content.listMedia?.length ?? 0,
                      itemBuilder: (c, i) {
                        return SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: content.listMedia?[i].images != null
                                ? FittedBox(
                                    fit: BoxFit.fitHeight,
                                    child: Image.network(
                                      content.listMedia?[i].images ?? "",
                                      errorBuilder: (c, o, s) {
                                        return const IconWidget(iconError);
                                      },
                                    ),
                                  )
                                : const IconWidget(iconError));
                      })
                  : FittedBox(
                      fit: BoxFit.fitHeight,
                      child: Image.network(
                        isUsingThumbnail
                            ? "https://$thumbnailUrl/${content.thumbnail}"
                            : "https://$contentUrl/${content.images}",
                        fit: BoxFit.cover,
                        errorBuilder: (bc, o, st) {
                          return Icon(
                            Icons.broken_image_outlined,
                            size: 2 * extra,
                            color: Color(
                                isGreenMode ? greenModeColor : primaryColor),
                          );
                          // Text(content.images ?? "Image not Found");
                        },
                      ),
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
                        basicResetStates(context, ref);
                        context.router.replace(const LandingRoute());

                        // ref.invalidate(kotaIdProvider);
                        // ref.invalidate(kotaNameProvider);
                        // ref.invalidate(tagsIdProvider);
                        // ref.invalidate(tagsNameProvider);
                      }
                    : () {
                        /// FIXME ga tau kenapa disini ada pesan error
                        ref.read(tagsIconLinkProvider.notifier).state = content
                                .petaKota?.kotaIcon2
                                ?.replaceAll(" ", "%20") ??
                            "";

                        print(
                            "Link Kota 2: ${content.petaKota?.kotaIcon2?.replaceAll(" ", "%20")}");
                        ref.read(kotaIdProvider.notifier).state =
                            content.kotaId ?? 0;
                        ref.read(kotaNameProvider.notifier).state =
                            content.kotaName ?? "";
                        ref.invalidate(tagsIdProvider);
                        ref.invalidate(tagsNameProvider);
                        context.router.replace(const GreenRoute());
                      },
                child: isGreenMode
                    ? SizedBox(
                        height: huge,

                        /// ngasih FittedBox di dalam parent yg ga kasih constraint bakal eror (Row, Column, dll)
                        child: InkWell(
                          onTap: () {
                            context.router
                                .replace(routeChooser(content.tipe ?? ""));
                          },
                          child: IconWidget(
                            menuIconNameChooser(content.tipe ?? "",
                                isGreenMode: isGreenMode),
                            // isOnlineSource: true,
                          ),
                        ))
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// TODO handle about the right icon for the right city
                          IconWidget(
                            // 'assets/icons/icon_daerah/${content.kotaName?.toLowerCase().replaceAll(" ", "_")}_4.png',
                            content.petaKota?.kotaIcon4
                                    ?.replaceAll(" ", "%20") ??
                                "",
                            isOnlineSource: true,
                            size: 2 * extra,
                            customOnErrorWidget: FittedBox(
                              child: Column(
                                children: [
                                  const Icon(
                                    Icons.location_city,
                                    color: Color(primaryColor),
                                  ),
                                  Text(
                                    content.kotaName ?? "",
                                    style: const TextStyle(
                                        color: Color(primaryColor)),
                                  )
                                ],
                              ),
                            ),
                          ),
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
                      margin: const EdgeInsets.symmetric(horizontal: small),
                      isOnlineSource: true,
                      onTap: () {
                        ref.read(tagsIdProvider.notifier).state =
                            content.tagsPihak?.tagsId ?? 0;
                        ref.read(tagsNameProvider.notifier).state =
                            content.tagsPihak?.tagsName ?? "";
                        ref.read(tagsIconLinkProvider.notifier).state =
                            content.tagsPihak?.tagsIcon ?? "";
                        ref.invalidate(kotaIdProvider);
                        ref.invalidate(kotaNameProvider);
                        context.router
                            .replace(routeChooser(content.tipe ?? ""));
                      },
                    ),
                    IconWidget(
                      content.tagsTopik?.tagsIcon ?? "",
                      margin: const EdgeInsets.symmetric(horizontal: small),
                      isOnlineSource: true,
                      onTap: () {
                        ref.read(tagsIdProvider.notifier).state =
                            content.tagsTopik?.tagsId ?? 0;
                        ref.read(tagsNameProvider.notifier).state =
                            content.tagsTopik?.tagsName ?? "";
                        ref.read(tagsIconLinkProvider.notifier).state =
                            content.tagsTopik?.tagsIcon ?? "";
                        ref.invalidate(kotaIdProvider);
                        ref.invalidate(kotaNameProvider);
                        context.router
                            .replace(routeChooser(content.tipe ?? ""));
                      },
                    ),
                    IconWidget(
                      content.tagsOtonomi?.tagsIcon ?? "",
                      margin: const EdgeInsets.symmetric(horizontal: small),
                      isOnlineSource: true,
                      onTap: () {
                        ref.read(tagsIdProvider.notifier).state =
                            content.tagsOtonomi?.tagsId ?? 0;
                        ref.read(tagsNameProvider.notifier).state =
                            content.tagsOtonomi?.tagsName ?? "";
                        ref.read(tagsIconLinkProvider.notifier).state =
                            content.tagsOtonomi?.tagsIcon ?? "";
                        ref.invalidate(kotaIdProvider);
                        ref.invalidate(kotaNameProvider);
                        context.router
                            .replace(routeChooser(content.tipe ?? ""));
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
                style: isGreenMode
                    ? Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: const Color(greenModeColor))
                    : Theme.of(context).textTheme.bodySmall,
              ),
              InkWell(
                onTap: () {
                  ref.read(selectedContentIdProvider.notifier).state =
                      content.id ?? 0;
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: medium),
                  child: Text(
                    '${content.judul}',
                    style: isGreenMode
                        ? Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(color: const Color(greenModeColor))
                        : Theme.of(context).textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
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
                    textStyle: const TextStyle(color: Colors.black),
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
              IconWidget(
                isGreenMode ? iconDibaca2 : iconDibaca,
                size: huge,
              ),
              FittedBox(
                  child: Row(
                children: [
                  Text("${content.totalRead ?? "0"} "),
                  const Text("Reads"),
                ],
              )),
              IconWidget(
                isGreenMode ? iconSuka2 : iconSuka,
                size: huge,
              ),
              FittedBox(
                child: Row(
                  children: [
                    Text("${content.totalLike ?? "0"} "),
                    Text("Likes"),
                  ],
                ),
              ),
              IconWidget(
                isGreenMode ? iconCommments2 : iconCommments,
                size: huge,
              ),
              FittedBox(
                child: Row(
                  children: [
                    Text("${content.totalComment ?? "0"} "),
                    const FittedBox(
                      child: Text(
                        "Comments",
                      ),
                    ),
                  ],
                ),
              ),
              IconWidget(
                isGreenMode ? iconTeruskan2 : iconTeruskan,
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
