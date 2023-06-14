import 'package:flutter/material.dart';
import 'package:flutter_neraca_ruang/logic/state_management/riverpod/auth_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

import 'core/consts/colors.dart';
import 'core/router/app_router.dart';
import 'data/models/login_response/login_response.dart';

void main() async {
  final appDocumentDir = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);
  Hive.registerAdapter(LoginResponseAdapter());
  Hive.registerAdapter(UserDataAdapter());
  Hive.registerAdapter(UserAdapter());
  Hive.openBox<LoginResponse>('authbox');
  runApp(ProviderScope(child: MyApp()));
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
