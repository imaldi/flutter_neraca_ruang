import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uni_links/uni_links.dart';

import '../../logic/state_management/riverpod/async_state_auth_providers.dart';
import '../../presentation/widgets/my_toast.dart';
import '../router/app_router.dart';

void initUniLinks(WidgetRef ref, BuildContext context, String message) async {
  try {
    // Get the initial deep link when the app is launched
    final initialLink = await getInitialLink();
    if ((initialLink ?? "").isNotEmpty) {
      handleDeepLink(ref, context, message,
          Uri.parse(initialLink ?? "https://neracaruang.com"));
    }
  } on PlatformException {
    // Handle any platform exceptions
  }

  // Listen for incoming deep links while the app is running
  uriLinkStream.listen((Uri? deepLink) {
    handleDeepLink(ref, context, message,
        deepLink ?? Uri.parse("https://neracaruang.com"));
  }, onError: (err) {
    // Handle any errors
  });
}

void handleDeepLink(
    WidgetRef ref, BuildContext context, String message, Uri deepLink) {
  // myToast(deepLink.toString());
  ref.read(callbackLinkProvider.notifier).state = deepLink.toString();
  ref.read(authStatusProvider.notifier).loginOAuth(successCallback: () {
    context.router.replace(LandingRoute());
    myToast("$message Success");
  });
}
