import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/drawer_content.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/scrollable_horizontal_image.dart';
import 'package:flutter_neraca_ruang/presentation/widgets/tab_menu_item.dart';

import 'core/consts/colors.dart';
import 'core/consts/sizes.dart';
import 'core/router/app_router.dart';

void main() {
  runApp(MyApp());
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
        textTheme: TextTheme(
            headlineSmall: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: const Color(titleColorText),
                fontWeight: FontWeight.bold),
            bodyMedium: const TextStyle(color: Colors.grey),
            bodySmall: const TextStyle(color: Color(titleColorText))),
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
