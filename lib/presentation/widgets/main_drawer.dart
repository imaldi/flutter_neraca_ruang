import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/social_media_panel_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/sizes.dart';
import '../../core/router/app_router.dart';
import '../../di.dart';
import '../../logic/state_management/riverpod/async_state_auth_providers.dart';
import 'drawer_content.dart';
import 'my_toast.dart';

class MainDrawer extends ConsumerWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var authData = ref.watch(authStatusProvider);
    var isLogin = authData.value != null;
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DrawerHeader(
                margin: const EdgeInsets.all(0),
                decoration:
                    BoxDecoration(border: Border.all(style: BorderStyle.none)),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.dehaze),
                  ],
                )),
            DrawerContent(),
            const SizedBox(
              height: 2 * extra,
            ),
            Visibility(
              visible: isLogin,
              child: InkWell(
                onTap: () {
                  context.router.pop();
                  context.router.push(const ProfileRoute());
                },
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: big, vertical: medium),
                    margin: const EdgeInsets.only(bottom: medium),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(huge))),
                    child: const Text("Profil")),
              ),
            ),
            InkWell(
              onTap: isLogin
                  ? () async {
                      ref.read(authStatusProvider.notifier).logout(
                          successCallback: () {
                        myToast("Log Out Success");
                        context.router.pop();
                      });
                      // context.router.replace(const LoginRoute());
                    }
                  : () {
                      context.router.push(const LoginRoute());
                    },
              child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: big, vertical: medium),
                  margin: const EdgeInsets.symmetric(vertical: big),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(huge))),
                  child: isLogin
                      ? const Text("Log Out")
                      : const Text("Masuk / Daftar")),
            ),
            SocialMediaPanelWidget(),
          ],
        ),
      ),
    );
  }
}
