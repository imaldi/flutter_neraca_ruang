import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/helper_functions/route_chooser.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/dashboard_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/sizes.dart';
import '../../logic/state_management/riverpod/all_content_list_providers.dart';

class TabMenuItem extends ConsumerWidget {
  final String text;
  final String textValue;
  const TabMenuItem(this.text, this.textValue, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    // var initType = ref.watch(tipeKontenProvider);
    return InkWell(
      onTap: () {
        ref.read(tipeKontenProvider.notifier).state = textValue;
        ref.invalidate(kotaIdProvider);
        ref.invalidate(kotaNameProvider);
        ref.invalidate(tagsIdProvider);
        ref.invalidate(tagsNameProvider);
        ref.invalidate(tagsIconLinkProvider);
        context.router.replace(routeChooser(textValue.toLowerCase()));
        // if (resetStates != null) {
        //   resetStates();
        // }
      },
      child: Container(
        padding: const EdgeInsets.all(normal),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
