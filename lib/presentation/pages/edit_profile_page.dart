import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/async_state_auth_providers.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/my_button.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/profile_image_widget.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/rounded_text_form_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/colors.dart';
import '../../core/consts/num_consts.dart';
import '../../core/consts/sizes.dart';
import '../../logic/state_management/riverpod/dashboard_providers.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/bottom_bar_widget.dart';
import '../widgets/main_drawer.dart';

@RoutePage()
class EditProfilePage extends ConsumerStatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  ConsumerState<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends ConsumerState<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    final textColor = Color(primaryColor);
    final isEnabled = ref.watch(profileEditMode);
    var userData = ref.watch(authStatusProvider);
    var emailController =
        TextEditingController(text: userData.value?.data?.members?.email);
    var tanggalLahirController = TextEditingController(
        text: userData.value?.data?.members?.tanggalLahir);
    var teleponController =
        TextEditingController(text: userData.value?.data?.members?.noHp);
    // nanti adakan provider buat kota name
    var kotaKabController = TextEditingController();
    var kodePosController =
        TextEditingController(text: userData.value?.data?.members?.kodePos);
    var content = {
      "Email": emailController,
      "Tanggal Lahir": tanggalLahirController,
      "Telepon": teleponController,
      "Kota / Kab.": kotaKabController,
      "Kode Pos": kodePosController,
    };
    return DefaultTabController(
      length: mainTabLength,
      child: Scaffold(
        appBar: appBarWidget(
          context,
          ref: ref,
        ),
        drawer: MainDrawer(),
        bottomNavigationBar: BottomBarWidget(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ProfileImageWidget(),
              ...content
                  .map((key, value) => MapEntry(
                      key,
                      Padding(
                        padding: const EdgeInsets.all(medium),
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: normal),
                                    child: Text(key))),
                            Expanded(
                              flex: 4,
                              child: RoundedTextFormField(
                                isEnabled: isEnabled,
                                controller: value,
                                hint: key,
                              ),
                            ),
                          ],
                        ),
                      )))
                  .values
                  .toList(),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: normal),
                      child: MyButton(
                        child: Text("Simpan"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: normal),
                      child: MyButton(
                          child: Text(
                            "Batal",
                            style: TextStyle(color: textColor),
                          ),
                          isSecondary: true,
                          onPressed: () {
                            ref.read(profileEditMode.notifier).state = false;
                          }),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
