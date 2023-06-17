import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stack_trace/stack_trace.dart' as stack_trace;

import 'core/consts/colors.dart';
import 'core/router/app_router.dart';
import 'di.dart' as di;
import 'logic/state_management/cubit_bloc/dashboard/dashboard_cubit.dart';

void main() async {
  await di.init();
  runApp(ProviderScope(child: MyApp()));
  FlutterError.demangleStackTrace = (StackTrace stack) {
    if (stack is stack_trace.Trace) return stack.vmTrace;
    if (stack is stack_trace.Chain) return stack.toTrace().vmTrace;
    return stack;
  };
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (bc) => DashboardCubit(),
      child: MaterialApp.router(
        title: 'Flutter Neraca Ruang',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
              headlineSmall: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(
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
      ),
    );
  }
}
