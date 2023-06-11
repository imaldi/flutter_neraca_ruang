import 'package:flutter/material.dart';

import '../../core/consts/assets.dart';
import '../../core/consts/sizes.dart';
import '../../core/consts/urls.dart';
import '../../data/models/dashboard_response/dashboard_response.dart';
import 'IconWidget.dart';

class ContentWidget extends StatefulWidget {
  final Datum content;
  final bool isUsingThumbnail;
  const ContentWidget(this.content, {this.isUsingThumbnail = false, Key? key})
      : super(key: key);

  @override
  _ContentWidgetState createState() => _ContentWidgetState();
}

class _ContentWidgetState extends State<ContentWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: normal),
          constraints: BoxConstraints(
            maxHeight: 200,
            minWidth: MediaQuery.of(context).size.width,
          ),
          child: Image.network(
            widget.isUsingThumbnail
                ? "https://$thumbnailUrl/${widget.content.thumbnail}"
                : "https://$contentUrl/${widget.content.images}" ?? "",
            fit: BoxFit.cover,
            errorBuilder: (bc, o, st) {
              return Text(widget.content.images ?? "");
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: medium),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.location_city),
                    Text(widget.content.kotaName ?? "")
                  ],
                ),
              ),
              const SizedBox(
                height: huge,
                child: FittedBox(
                  child: Row(
                    children: [
                      IconWidget(iconVideo),
                      IconWidget(iconFoto),
                      IconWidget(iconJurnal),
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
                '${widget.content.sourceName ?? ""} 26/05/2023, 12:00 WIB',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                '${widget.content.judul}',
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              Text(
                "${widget.content.keterangan}",
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
                      Text("${widget.content.totalRead ?? "0"} "),
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
                      Text("${widget.content.totalLike ?? "0"} "),
                      const FittedBox(child: Text("Likes")),
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
                      Text("${widget.content.totalComment ?? "0"} "),
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
