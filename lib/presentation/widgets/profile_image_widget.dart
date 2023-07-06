import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/async_state_auth_providers.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/image_picker/my_image_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/consts/colors.dart';
import '../../core/consts/sizes.dart';
import '../../logic/state_management/riverpod/dashboard_providers.dart';

class ProfileImageWidget extends ConsumerWidget {
  final bool isDisplayingUbahButton;
  const ProfileImageWidget({this.isDisplayingUbahButton = false, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textColor = Color(primaryColor);
    final textStyle = TextStyle(color: textColor);
    final isEnabled = ref.watch(profileEditMode);
    final userData = ref.watch(authStatusProvider);
    final pathController = TextEditingController();

    return Stack(
      children: [
        Column(
          children: [
            Container(
              // height: 200,
              width: double.infinity,
              color: Colors.grey,
              padding: const EdgeInsets.symmetric(vertical: huge),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      // height: huge,
                      // width: huge,
                      padding: const EdgeInsets.all(small),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                        border: Border.all(color: textColor, width: 2),
                      ),
                      child: Container(
                        // height: huge,
                        // width: huge,
                        decoration: BoxDecoration(
                          color: textColor,
                          shape: BoxShape.circle,
                        ),
                        clipBehavior: Clip.antiAlias,
                        padding: const EdgeInsets.all(big),
                        child: SizedOverflowBox(
                          size: Size(medium, medium),
                          child: SizedBox(
                            /// FIXME, ketika take picture yg lebar, dia lebar max nya "extra"
                            width: extra,
                            // height: extra,
                            child: Center(
                              child: MyImagePickerWidget(
                                  // isEnabled: isEnabled,
                                  enabledRiverpod: profileEditMode,
                                  functionCallbackSetImageFilePath:
                                      (randomCode, theXFile) {
                                    ref
                                        .read(pathFotoProvider.notifier).state =
                                        theXFile?.path ?? "";
                                  },
                                  defaultImagePlaceholder: Icon(
                                    Icons.camera_alt_outlined,
                                    color: Colors.white,
                                    size: huge + normal,
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "${userData.value?.data?.members?.username ?? ""}",
                      style: textStyle,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: medium + normal,
              child: Container(
                color: Colors.transparent,
              ),
            )
          ],
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: huge,
                  ),
                  Visibility(
                    visible: !isEnabled && isDisplayingUbahButton,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: textColor,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(huge)))),
                        onPressed: () {
                          ref.read(profileEditMode.notifier).state = true;
                        },
                        child: Text("Ubah")),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
