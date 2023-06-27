import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/rounded_container.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/colors.dart';
import '../../core/consts/sizes.dart';
import '../../core/router/app_router.dart';

class KembaliButton extends ConsumerWidget {
  const KembaliButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textColor = Color(primaryColor);
    final textStyle = TextStyle(color: textColor, fontWeight: FontWeight.w500);
    final boxDecoration =
        BoxDecoration(border: Border.all(color: textColor, width: 2));
    return FittedBox(
      child: InkWell(
        onTap: () {
          context.router.replace(const LandingRoute());
        },
        child: RoundedContainer(big,
            // width: double.infinity,
            boxDecoration: boxDecoration,
            padding: const EdgeInsets.symmetric(
                vertical: normal, horizontal: 2 * huge),
            margin: const EdgeInsets.symmetric(vertical: medium),
            child: Center(
              child: Text(
                "Kembali",
                style: textStyle,
              ),
            )),
      ),
    );
  }
}
