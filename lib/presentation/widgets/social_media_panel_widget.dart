import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/assets.dart';
import 'package:flutter_neraca_ruang/core/consts/colors.dart';
import 'package:flutter_neraca_ruang/core/consts/urls.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/IconWidget.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/consts/sizes.dart';

class SocialMediaPanelWidget extends StatelessWidget {
  final bool isGreenMode;

  const SocialMediaPanelWidget({this.isGreenMode = false, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () async {
                    var url = Uri.https(fbUrl, fbNeracaRuang);
                    print("url fb: $url");
                    if (!await launchUrl(url,
                        mode: LaunchMode.externalApplication)) {
                      throw Exception('Could not launch $url');
                    }
                  },
                  child: IconWidget(
                    isGreenMode ? iconFb2 : iconFb,
                    size: huge,
                  )),
              InkWell(
                  onTap: () async {
                    var url = Uri.https(igUrl, igNeracaRuang);
                    print("url ig: $url");
                    if (!await launchUrl(url,
                        mode: LaunchMode.externalApplication)) {
                      throw Exception('Could not launch $url');
                    }
                  },
                  child: IconWidget(
                    isGreenMode ? iconIg2 : iconIg,
                    size: huge,
                  )),
              InkWell(
                  onTap: () async {
                    var url = Uri.https(twUrl, twNeracaRuang);
                    print("url tw: $url");
                    if (!await launchUrl(url,
                        mode: LaunchMode.externalApplication)) {
                      throw Exception('Could not launch $url');
                    }
                  },
                  child: IconWidget(
                    isGreenMode ? iconTw2 : iconTw,
                    size: huge,
                  )),
              InkWell(
                  onTap: () async {
                    var url = Uri.https(tkUrl, tkNeracaRuang);
                    print("url tkt: $url");
                    if (!await launchUrl(url,
                        mode: LaunchMode.externalApplication)) {
                      throw Exception('Could not launch $url');
                    }
                  },
                  child: IconWidget(
                    isGreenMode ? iconTt2 : iconTt,
                    size: huge,
                  )),
              InkWell(
                  onTap: () async {
                    var url = Uri.https(ytUrl, ytNeracaRuang);
                    print("url yt: $url");
                    if (!await launchUrl(url,
                        mode: LaunchMode.externalApplication)) {
                      throw Exception('Could not launch $url');
                    }
                  },
                  child: IconWidget(
                    isGreenMode ? iconYt2 : iconYt,
                    size: huge,
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            "neracaruang@neracaruang.com",
            style: TextStyle(
                color: Color(isGreenMode ? greenModeColor : primaryColor),
                decoration: TextDecoration.underline),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: InkWell(
            onTap: (){},
            child: Text(
              "Privacy Policy of Neraca Ruang",
              style: TextStyle(
              decoration: TextDecoration.underline,
                color: Color(isGreenMode ? greenModeColor : primaryColor),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            "Copyright © PT. Semesta Teknologi Indonesia",
            style: TextStyle(
              color: Color(isGreenMode ? greenModeColor : primaryColor),
            ),
          ),
        ),
      ],
    );
    ;
  }
}
