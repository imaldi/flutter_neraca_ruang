import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../logic/state_management/riverpod/providers.dart';
import '../router/app_router.dart';

Future<bool> basicOnWillPop(BuildContext context, WidgetRef ref) {
  context.router.replace(const LandingRoute());
  ref.read(pageNumberProvider.notifier).state = 1;
  ref.read(kotaIdProvider.notifier).state = 0;
  ref.read(tagsIdProvider.notifier).state = 0;
  return Future.value(false);
}
