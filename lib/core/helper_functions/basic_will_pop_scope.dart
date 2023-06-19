import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../logic/state_management/riverpod/dashboard_providers.dart';
import '../router/app_router.dart';

// FIXME nanti perbaiki, bukan begini caranya (Reset satu satu gini, sekarang yang penting jadi saja dulu)
Future<bool> basicOnWillPop(BuildContext context, WidgetRef ref) {
  context.router.replace(const LandingRoute());
  basicResetStates(context, ref);

  return Future.value(false);
}

void basicResetStates(BuildContext context, WidgetRef ref) {
  // ref.read(pageNumberProvider.notifier).state = 1;
  // ref.read(kotaIdProvider.notifier).state = 0;
  ref.invalidate(pageNumberProvider);
  ref.invalidate(kotaIdProvider);
  ref.invalidate(kotaNameProvider);
  ref.invalidate(tagsIdProvider);
  ref.invalidate(tagsNameProvider);
  ref.invalidate(tagsIconLinkProvider);
  ref.invalidate(limitProvider);
  ref.invalidate(selectedContentIdProvider);
  ref.invalidate(startSearchingByTag);
  ref.invalidate(startSearchingByKeyword);
  ref.invalidate(tagsPihak);
  ref.invalidate(tagsOtonom);
  ref.invalidate(tagsTopik);
  // ref.read(kotaNameProvider.notifier).state = "";
  // ref.read(tagsIdProvider.notifier).state = 0;
  // ref.read(tagsNameProvider.notifier).state = "";
  // ref.read(tagsIconLinkProvider.notifier).state = "";
  // ref.read(limitProvider.notifier).state = 2;
  // ref.read(selectedContentIdProvider.notifier).state = 0;
}
