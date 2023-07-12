import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/colors.dart';
import '../../core/consts/sizes.dart';
import '../../logic/state_management/riverpod/async_state_auth_providers.dart';

class IAmNotRobot extends ConsumerStatefulWidget {
  const IAmNotRobot({Key? key}) : super(key: key);

  @override
  _IAmNotRobotState createState() => _IAmNotRobotState();
}

class _IAmNotRobotState extends ConsumerState<IAmNotRobot> {
  @override
  Widget build(BuildContext context) {
    var iAmNotRobot = ref.watch(temporaryImNotRobotProvider);

    return Container(
      color: Colors.grey[100],
      padding: EdgeInsets.all(medium),
      child: Row(
        children: [
          iAmNotRobot == null
              ? Container(
                  padding: const EdgeInsets.all(normal),
                  child: SizedBox(
                      height: medium,
                      width: medium,
                      child: CircularProgressIndicator(
                        color: Color(primaryColor),
                      )),
                )
              : Checkbox(
                  value: iAmNotRobot,
                  onChanged: (val) {
                    if (!(iAmNotRobot) && (val ?? false)) {
                      ref.read(temporaryImNotRobotProvider.notifier).state =
                          null;

                      Future.delayed(Duration(seconds: 3), () {
                        ref.read(temporaryImNotRobotProvider.notifier).state =
                            true;
                      });
                    }
                    // if (!(val ?? true)) {
                    //   ref
                    //       .read(
                    //       temporaryImNotRobotProvider.notifier)
                    //       .state = false;
                    // }
                  }),
          Text("Saya Bukan Robot"),
        ],
      ),
    );
  }
}
