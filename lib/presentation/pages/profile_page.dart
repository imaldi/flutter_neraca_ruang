import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/colors.dart';
import 'package:flutter_neraca_ruang/core/helper_functions/basic_will_pop_scope.dart';
import 'package:flutter_neraca_ruang/core/router/app_router.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/async_state_auth_providers.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/dashboard_providers.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/bottom_bar_widget.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/main_drawer.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/profile_image_widget.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/rounded_container.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/num_consts.dart';
import '../../core/consts/sizes.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/kembali_button.dart';
import '../widgets/my_toast.dart';

@RoutePage()
class ProfilePage extends ConsumerWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textColor = Color(primaryColor);
    final textStyle =
        TextStyle(color: textColor, fontSize: big, fontWeight: FontWeight.w500);
    final boxDecoration =
        BoxDecoration(border: Border.all(color: textColor, width: 4.0));
    final userData = ref.watch(authStatusProvider);
    // ref.listen(authStatusProvider, (previous, next) {
    //   if (next.hasValue) {
    //     // ini set untuk dapat nama provinsi dan kab.kota
    //     ref.read(provIdParamProvider.notifier).state =
    //         next.value?.data?.members?.propinsiId ?? 0;
    //     ref.read(kotaIdParamProvider.notifier).state =
    //         next.value?.data?.members?.kotaId ?? 0;
    //     // ini untuk set nilai dropdown
    //     ref.read(provIdProvider.notifier).state =
    //         next.value?.data?.members?.propinsiId ?? 0;
    //     ref.read(kotaIdProvider.notifier).state =
    //         next.value?.data?.members?.propinsiId ?? 0;
    //
    //     // ref
    //     //     .read(provNameProvider.notifier)
    //     //     .state = val;
    //   }
    // });
    // var kotaName = ref.watch(kotaNameProfileProvider);

    return DefaultTabController(
      length: mainTabLength,
      child: Scaffold(
        appBar: appBarWidget(
          context,
          ref: ref,
        ),
        drawer: MainDrawer(),
        body: Column(
          children: [
            ProfileImageWidget(),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: huge),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: {
                    "Perbaharui Akun": () async {
                      // myToast("Perbarui Akun");
                      ref.read(provIdParamProvider.notifier).state =
                          await userData.value?.data?.members?.propinsiId ?? 0;
                      ref.read(kotaIdParamProvider.notifier).state =
                          await userData.value?.data?.members?.kotaId ?? 0;
                      context.router.push(EditProfileRoute());
                    },
                    "Ubah Kata Sandi": () {
                      // myToast("Ubah Kata Sandi");
                      context.router.push(ChangePasswordRoute());
                    },
                    "Keluar Akun": () {
                      ///  logout
                      // myToast("Keluar Akun");
                      ref.read(authStatusProvider.notifier).logout(
                          successCallback: () {
                        myToast("Log Out Success");
                        context.router.pop();
                      });
                      context.router.replace(LandingRoute());
                    }
                  }
                      .map((key, value) {
                        return MapEntry(
                            key,
                            InkWell(
                              onTap: value,
                              child: RoundedContainer(big + small,
                                  width: double.infinity,
                                  boxDecoration: boxDecoration,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: medium),
                                  child: Center(
                                    child: Text(
                                      key,
                                      style: textStyle,
                                    ),
                                  )),
                            ));
                      })
                      .values
                      .toList(),
                ),
              ),
            ),
            KembaliButton(),
          ],
        ),
        bottomNavigationBar: BottomBarWidget(),
      ),
    );
  }
}
