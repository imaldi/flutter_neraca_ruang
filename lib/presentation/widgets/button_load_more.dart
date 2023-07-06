import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/sizes.dart';
import '../../logic/state_management/riverpod/dashboard_providers.dart';

class ButtonLoadMore extends ConsumerWidget {
  const ButtonLoadMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        ref.read(limitProvider.notifier).update((state) => state + 3);
      },
      child: Container(
        padding: const EdgeInsets.all(medium),
        margin: const EdgeInsets.symmetric(vertical: medium),
        decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(extra))),
        child: const Text(
          "LOAD MORE",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
