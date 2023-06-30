import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/my_toast.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stack_trace/stack_trace.dart' as stack_trace;

import 'core/consts/colors.dart';
import 'core/router/app_router.dart';
import 'di.dart' as di;
import 'package:uni_links/uni_links.dart';
import 'package:flutter/services.dart' show PlatformException;

void main() async {
  await di.init();
  runApp(ProviderScope(child: MyApp()));
  FlutterError.demangleStackTrace = (StackTrace stack) {
    if (stack is stack_trace.Trace) return stack.vmTrace;
    if (stack is stack_trace.Chain) return stack.toTrace().vmTrace;
    return stack;
  };
  // Listen for deep links when the app is launched
  initUniLinks();
}

void initUniLinks() async {
  try {
    // Get the initial deep link when the app is launched
    final initialLink = await getInitialLink();
    if ((initialLink ?? "").isNotEmpty) {
      handleDeepLink(Uri.parse(initialLink ?? "https://neracaruang.com"));
    }
  } on PlatformException {
    // Handle any platform exceptions
  }

  // Listen for incoming deep links while the app is running
  uriLinkStream.listen((Uri? deepLink) {
    handleDeepLink(deepLink ?? Uri.parse("https://neracaruang.com"));
  }, onError: (err) {
    // Handle any errors
  });
}

void handleDeepLink(Uri deepLink) {
  myToast(deepLink.toString());
  // ref.read

  // // Extract the query parameters from the deep link URL
  // final userId = deepLink.queryParameters['userId'];
  // final userName = deepLink.queryParameters['userName'];
  // final userEmail = deepLink.queryParameters['userEmail'];
  //
  // // Do whatever you need with the user data
  // print('User ID: $userId');
  // print('User Name: $userName');
  // print('User Email: $userEmail');
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Neraca Ruang',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        hintColor: Color(primaryHintColor).withAlpha(128),
        textTheme: TextTheme(
          headlineSmall: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: const Color(titleColorText), fontWeight: FontWeight.bold),
          bodyMedium: const TextStyle(color: Colors.grey),
          bodySmall: const TextStyle(color: Color(titleColorText)),
        ),
        appBarTheme: Theme.of(context).appBarTheme.copyWith(
            backgroundColor: Colors.white,
            titleTextStyle: const TextStyle(color: Colors.black),
            iconTheme: const IconThemeData(color: Color(appBarIconColor)),
            actionsIconTheme:
                const IconThemeData(color: Color(appBarIconColor))),
      ),
      routerConfig: _appRouter.config(),
    );
  }
}
