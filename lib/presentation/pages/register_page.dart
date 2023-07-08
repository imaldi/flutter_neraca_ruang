import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/async_state_auth_providers.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/dashboard_providers.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/my_confirm_dialog/my_confirm_dialog.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../core/consts/assets.dart';
import '../../core/consts/colors.dart';
import '../../core/consts/sizes.dart';
import '../../core/consts/urls.dart';
import '../../core/helper_functions/deeplink_handler.dart';
import '../../core/router/app_router.dart';
import '../../data/models/kota_kabupaten_response/kota_kabupaten_response.dart';
import '../../logic/state_management/riverpod/current_location_providers.dart';
import '../widgets/my_toast.dart';
import '../widgets/register_pop_up.dart';
import '../widgets/rounded_container.dart';
import '../widgets/rounded_text_form_field.dart';
import '../widgets/searchable_dropdown.dart';

@RoutePage()
class RegisterPage extends ConsumerWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Container(color: Colors.grey, child: RegisterPopUp()),
      ),
    );
  }
}
