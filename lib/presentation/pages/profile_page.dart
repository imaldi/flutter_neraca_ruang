import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/core/consts/colors.dart';
import 'package:flutter_neraca_ruang/core/router/app_router.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/bottom_bar_widget.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/main_drawer.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/profile_image_widget.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/rounded_container.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/num_consts.dart';
import '../../core/consts/sizes.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/my_toast.dart';

@RoutePage()
class ProfilePage extends ConsumerWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textColor = Color(primaryColor);
    final textStyle = TextStyle(color: textColor);
    final boxDecoration = BoxDecoration(border: Border.all(color: textColor));
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
                    "Perbarui Akun": () {
                      myToast("Perbarui Akun");
                      context.router.push(EditProfileRoute());
                    },
                    "Ubah Kata Sandi": () {
                      myToast("Ubah Kata Sandi");
                      context.router.push(ChangePasswordRoute());
                    },
                    "Keluar Akun": () {
                      ///  logout
                      myToast("Keluar Akun");
                      context.router.replace(LandingRoute());
                    }
                  }
                      .map((key, value) {
                        return MapEntry(
                            key,
                            InkWell(
                              onTap: value,
                              child: RoundedContainer(medium,
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
            FittedBox(
              child: InkWell(
                onTap: () {
                  context.router.replace(const LandingRoute());
                },
                child: RoundedContainer(medium,
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
            )
          ],
        ),
        bottomNavigationBar: BottomBarWidget(),
      ),
    );
  }
}
