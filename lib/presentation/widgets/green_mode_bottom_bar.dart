import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/colors.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/rounded_container.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/sizes.dart';
import '../../core/helper_functions/basic_will_pop_scope.dart';
import '../../core/router/app_router.dart';

class GreenModeBottomBar extends ConsumerWidget {
  const GreenModeBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mainColor = Color(greenModeColor);
    final textStyle = TextStyle(color: mainColor);
    final boxBorder = BoxDecoration(border: Border.all(color: mainColor));
    final margin = const EdgeInsets.symmetric(horizontal: normal);
    return Container(
      padding: const EdgeInsets.all(normal),
      color: Colors.white,
      child: Row(
        children: [
          InkWell(
            onTap: () {
              context.router.replace(const KabarRoute());
              basicResetStates(context, ref);
            },
            child: RoundedContainer(
              medium,
              margin: margin,
              boxDecoration: boxBorder,
              child: Text(
                "KABAR",
                style: textStyle,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              context.router.replace(const JurnalRoute());
              basicResetStates(context, ref);
            },
            child: RoundedContainer(
              medium,
              margin: margin,
              boxDecoration: boxBorder,
              child: Text(
                "JURNAL",
                style: textStyle,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              context.router.replace(const InfografisRoute());
              basicResetStates(context, ref);
            },
            child: RoundedContainer(medium,
                margin: margin,
                boxDecoration: boxBorder,
                child: Text(
                  "INFOGRAFIS",
                  style: textStyle,
                )),
          ),
          InkWell(
            onTap: () {
              context.router.replace(const VideoRoute());
              basicResetStates(context, ref);
            },
            child: RoundedContainer(medium,
                margin: margin,
                boxDecoration: boxBorder,
                child: Text(
                  "VIDEO",
                  style: textStyle,
                )),
          ),
          InkWell(
            onTap: () {
              context.router.replace(const AlbumFotoRoute());
              basicResetStates(context, ref);
            },
            child: RoundedContainer(medium,
                margin: margin,
                boxDecoration: boxBorder,
                child: Text(
                  "ALBUM FOTO",
                  style: textStyle,
                )),
          ),
          InkWell(
            onTap: () {
              context.router.replace(const DiskusiRoute());
              basicResetStates(context, ref);
            },
            child: RoundedContainer(medium,
                margin: margin,
                boxDecoration: boxBorder,
                child: Text(
                  "DISKUSI",
                  style: textStyle,
                )),
          ),
        ],
      ),
    );
  }
}
