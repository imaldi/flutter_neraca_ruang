import 'package:flutter/material.dart';

import '../../core/consts/assets.dart';
import '../../core/consts/sizes.dart';
import '../../core/consts/urls.dart';
import '../../data/models/dashboard_response/dashboard_response.dart';
import 'IconWidget.dart';

class ContentWidget extends StatefulWidget {
  final Datum content;
  const ContentWidget(this.content, {Key? key}) : super(key: key);

  @override
  _ContentWidgetState createState() => _ContentWidgetState();
}

class _ContentWidgetState extends State<ContentWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: extra),
          constraints: BoxConstraints(
            maxHeight: 200,
            minWidth: MediaQuery.of(context).size.width,
          ),
          child: Image.network(
            "https://$contentUrl/${widget.content.images}" ?? "",
            fit: BoxFit.cover,
            errorBuilder: (bc, o, st) {
              return Text(widget.content.images ?? "");
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: medium),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
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
              Text("${widget.content.keterangan}"),
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
                  Flexible(
                      child: IconWidget(
                    iconForum,
                    size: huge,
                  )),
                  Expanded(child: Text("${widget.content.totalRead} Reads"))
                ],
              ),
              Row(
                children: [
                  Flexible(
                      child: IconWidget(
                    iconForum,
                    size: huge,
                  )),
                  Expanded(child: Text("${widget.content.totalLike} Likes"))
                ],
              ),
              Row(
                children: [
                  Flexible(
                      child: IconWidget(
                    iconForum,
                    size: huge,
                  )),
                  Expanded(child: Text("${widget.content.totalLike} Comments"))
                ],
              ),
              IconWidget(
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
