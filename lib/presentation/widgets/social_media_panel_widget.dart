import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/urls.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaPanelWidget extends StatelessWidget {
  const SocialMediaPanelWidget({Key? key}) : super(key: key);

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
                  child: Image.asset("assets/images/icon_facebook.png")),
              InkWell(
                  onTap: () async {
                    var url = Uri.https(igUrl, igNeracaRuang);
                    print("url ig: $url");
                    if (!await launchUrl(url,
                        mode: LaunchMode.externalApplication)) {
                      throw Exception('Could not launch $url');
                    }
                  },
                  child: Image.asset("assets/images/icon_ig.png")),
              InkWell(
                  onTap: () async {
                    var url = Uri.https(twUrl, twNeracaRuang);
                    print("url tw: $url");
                    if (!await launchUrl(url,
                        mode: LaunchMode.externalApplication)) {
                      throw Exception('Could not launch $url');
                    }
                  },
                  child: Image.asset("assets/images/icon_twitter.png")),
              InkWell(
                  onTap: () async {
                    var url = Uri.https(tkUrl, tkNeracaRuang);
                    print("url tkt: $url");
                    if (!await launchUrl(url,
                        mode: LaunchMode.externalApplication)) {
                      throw Exception('Could not launch $url');
                    }
                  },
                  child: Image.asset("assets/images/icon_tiktok.png")),
              InkWell(
                  onTap: () async {
                    var url = Uri.https(ytUrl, ytNeracaRuang);
                    print("url yt: $url");
                    if (!await launchUrl(url,
                        mode: LaunchMode.externalApplication)) {
                      throw Exception('Could not launch $url');
                    }
                  },
                  child: Image.asset("assets/images/icon_youtube.png")),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            "neracaruang@neracaruang.com",
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(decoration: TextDecoration.underline),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            "Copyright © PT. Semesta Teknologi Indonesia",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
    ;
  }
}
